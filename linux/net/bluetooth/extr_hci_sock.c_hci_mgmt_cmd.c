
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct mgmt_hdr {int len; int index; int opcode; } ;
struct hci_mgmt_handler {int (* func ) (struct sock*,struct hci_dev*,int *,size_t) ;int flags; size_t data_len; } ;
struct hci_mgmt_chan {scalar_t__ channel; size_t handler_count; int (* hdev_init ) (struct sock*,struct hci_dev*) ;struct hci_mgmt_handler* handlers; } ;
struct hci_dev {int dummy; } ;


 int BT_DBG (char*,size_t) ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HCI_CHANNEL_CONTROL ;
 int HCI_CHANNEL_MONITOR ;
 int HCI_CONFIG ;
 int HCI_MGMT_NO_HDEV ;
 int HCI_MGMT_UNCONFIGURED ;
 int HCI_MGMT_UNTRUSTED ;
 int HCI_MGMT_VAR_LEN ;
 int HCI_SETUP ;
 int HCI_SOCK_TRUSTED ;
 int HCI_UNCONFIGURED ;
 int HCI_USER_CHANNEL ;
 size_t MGMT_INDEX_NONE ;
 int MGMT_STATUS_INVALID_INDEX ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_PERMISSION_DENIED ;
 int MGMT_STATUS_UNKNOWN_COMMAND ;
 size_t __le16_to_cpu (int ) ;
 struct sk_buff* create_monitor_ctrl_command (struct sock*,size_t,size_t,size_t,void*) ;
 struct hci_dev* hci_dev_get (size_t) ;
 int hci_dev_put (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_send_to_channel (int ,struct sk_buff*,int ,int *) ;
 int hci_sock_test_flag (struct sock*,int ) ;
 int kfree (void*) ;
 int kfree_skb (struct sk_buff*) ;
 void* kmalloc (size_t,int ) ;
 scalar_t__ memcpy_from_msg (void*,struct msghdr*,size_t) ;
 int mgmt_cmd_status (struct sock*,size_t,size_t,int ) ;
 int stub1 (struct sock*,struct hci_dev*) ;
 int stub2 (struct sock*,struct hci_dev*,int *,size_t) ;

__attribute__((used)) static int hci_mgmt_cmd(struct hci_mgmt_chan *chan, struct sock *sk,
   struct msghdr *msg, size_t msglen)
{
 void *buf;
 u8 *cp;
 struct mgmt_hdr *hdr;
 u16 opcode, index, len;
 struct hci_dev *hdev = ((void*)0);
 const struct hci_mgmt_handler *handler;
 bool var_len, no_hdev;
 int err;

 BT_DBG("got %zu bytes", msglen);

 if (msglen < sizeof(*hdr))
  return -EINVAL;

 buf = kmalloc(msglen, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 if (memcpy_from_msg(buf, msg, msglen)) {
  err = -EFAULT;
  goto done;
 }

 hdr = buf;
 opcode = __le16_to_cpu(hdr->opcode);
 index = __le16_to_cpu(hdr->index);
 len = __le16_to_cpu(hdr->len);

 if (len != msglen - sizeof(*hdr)) {
  err = -EINVAL;
  goto done;
 }

 if (chan->channel == HCI_CHANNEL_CONTROL) {
  struct sk_buff *skb;


  skb = create_monitor_ctrl_command(sk, index, opcode, len,
        buf + sizeof(*hdr));
  if (skb) {
   hci_send_to_channel(HCI_CHANNEL_MONITOR, skb,
         HCI_SOCK_TRUSTED, ((void*)0));
   kfree_skb(skb);
  }
 }

 if (opcode >= chan->handler_count ||
     chan->handlers[opcode].func == ((void*)0)) {
  BT_DBG("Unknown op %u", opcode);
  err = mgmt_cmd_status(sk, index, opcode,
          MGMT_STATUS_UNKNOWN_COMMAND);
  goto done;
 }

 handler = &chan->handlers[opcode];

 if (!hci_sock_test_flag(sk, HCI_SOCK_TRUSTED) &&
     !(handler->flags & HCI_MGMT_UNTRUSTED)) {
  err = mgmt_cmd_status(sk, index, opcode,
          MGMT_STATUS_PERMISSION_DENIED);
  goto done;
 }

 if (index != MGMT_INDEX_NONE) {
  hdev = hci_dev_get(index);
  if (!hdev) {
   err = mgmt_cmd_status(sk, index, opcode,
           MGMT_STATUS_INVALID_INDEX);
   goto done;
  }

  if (hci_dev_test_flag(hdev, HCI_SETUP) ||
      hci_dev_test_flag(hdev, HCI_CONFIG) ||
      hci_dev_test_flag(hdev, HCI_USER_CHANNEL)) {
   err = mgmt_cmd_status(sk, index, opcode,
           MGMT_STATUS_INVALID_INDEX);
   goto done;
  }

  if (hci_dev_test_flag(hdev, HCI_UNCONFIGURED) &&
      !(handler->flags & HCI_MGMT_UNCONFIGURED)) {
   err = mgmt_cmd_status(sk, index, opcode,
           MGMT_STATUS_INVALID_INDEX);
   goto done;
  }
 }

 no_hdev = (handler->flags & HCI_MGMT_NO_HDEV);
 if (no_hdev != !hdev) {
  err = mgmt_cmd_status(sk, index, opcode,
          MGMT_STATUS_INVALID_INDEX);
  goto done;
 }

 var_len = (handler->flags & HCI_MGMT_VAR_LEN);
 if ((var_len && len < handler->data_len) ||
     (!var_len && len != handler->data_len)) {
  err = mgmt_cmd_status(sk, index, opcode,
          MGMT_STATUS_INVALID_PARAMS);
  goto done;
 }

 if (hdev && chan->hdev_init)
  chan->hdev_init(sk, hdev);

 cp = buf + sizeof(*hdr);

 err = handler->func(sk, hdev, cp, len);
 if (err < 0)
  goto done;

 err = msglen;

done:
 if (hdev)
  hci_dev_put(hdev);

 kfree(buf);
 return err;
}
