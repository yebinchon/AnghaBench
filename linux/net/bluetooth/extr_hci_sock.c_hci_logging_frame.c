
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct sk_buff {int* data; } ;
struct msghdr {int msg_flags; } ;
struct hci_mon_hdr {int opcode; int index; int len; } ;
struct hci_dev {int dummy; } ;
typedef int __u8 ;


 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int HCI_CHANNEL_MONITOR ;
 int HCI_MON_USER_LOGGING ;
 int HCI_SOCK_TRUSTED ;
 int MGMT_INDEX_NONE ;
 int MSG_DONTWAIT ;
 int __le16_to_cpu (int ) ;
 struct sk_buff* bt_skb_send_alloc (struct sock*,int,int,int*) ;
 int cpu_to_le16 (int ) ;
 struct hci_dev* hci_dev_get (int) ;
 int hci_dev_put (struct hci_dev*) ;
 int hci_send_to_channel (int ,struct sk_buff*,int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ memcpy_from_msg (int ,struct msghdr*,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int hci_logging_frame(struct sock *sk, struct msghdr *msg, int len)
{
 struct hci_mon_hdr *hdr;
 struct sk_buff *skb;
 struct hci_dev *hdev;
 u16 index;
 int err;





 if (len < sizeof(*hdr) + 3)
  return -EINVAL;

 skb = bt_skb_send_alloc(sk, len, msg->msg_flags & MSG_DONTWAIT, &err);
 if (!skb)
  return err;

 if (memcpy_from_msg(skb_put(skb, len), msg, len)) {
  err = -EFAULT;
  goto drop;
 }

 hdr = (void *)skb->data;

 if (__le16_to_cpu(hdr->len) != len - sizeof(*hdr)) {
  err = -EINVAL;
  goto drop;
 }

 if (__le16_to_cpu(hdr->opcode) == 0x0000) {
  __u8 priority = skb->data[sizeof(*hdr)];
  __u8 ident_len = skb->data[sizeof(*hdr) + 1];
  if (priority > 7 || skb->data[len - 1] != 0x00 ||
      ident_len > len - sizeof(*hdr) - 3 ||
      skb->data[sizeof(*hdr) + ident_len + 1] != 0x00) {
   err = -EINVAL;
   goto drop;
  }
 } else {
  err = -EINVAL;
  goto drop;
 }

 index = __le16_to_cpu(hdr->index);

 if (index != MGMT_INDEX_NONE) {
  hdev = hci_dev_get(index);
  if (!hdev) {
   err = -ENODEV;
   goto drop;
  }
 } else {
  hdev = ((void*)0);
 }

 hdr->opcode = cpu_to_le16(HCI_MON_USER_LOGGING);

 hci_send_to_channel(HCI_CHANNEL_MONITOR, skb, HCI_SOCK_TRUSTED, ((void*)0));
 err = len;

 if (hdev)
  hci_dev_put(hdev);

drop:
 kfree_skb(skb);
 return err;
}
