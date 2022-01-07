
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct sk_buff {int tstamp; } ;
struct mgmt_hdr {void* index; void* len; void* opcode; } ;
struct mgmt_ev_cmd_complete {int data; int status; void* opcode; } ;


 int BT_DBG (char*,struct sock*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_CHANNEL_MONITOR ;
 int HCI_SOCK_TRUSTED ;
 int MGMT_EV_CMD_COMPLETE ;
 int __net_timestamp (struct sk_buff*) ;
 struct sk_buff* alloc_skb (int,int ) ;
 void* cpu_to_le16 (int) ;
 struct sk_buff* create_monitor_ctrl_event (void*,int ,int,int,struct mgmt_ev_cmd_complete*) ;
 int hci_send_to_channel (int ,struct sk_buff*,int ,int *) ;
 int hci_sock_get_cookie (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,void*,size_t) ;
 void* skb_put (struct sk_buff*,int) ;
 int sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

int mgmt_cmd_complete(struct sock *sk, u16 index, u16 cmd, u8 status,
        void *rp, size_t rp_len)
{
 struct sk_buff *skb, *mskb;
 struct mgmt_hdr *hdr;
 struct mgmt_ev_cmd_complete *ev;
 int err;

 BT_DBG("sock %p", sk);

 skb = alloc_skb(sizeof(*hdr) + sizeof(*ev) + rp_len, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 hdr = skb_put(skb, sizeof(*hdr));

 hdr->opcode = cpu_to_le16(MGMT_EV_CMD_COMPLETE);
 hdr->index = cpu_to_le16(index);
 hdr->len = cpu_to_le16(sizeof(*ev) + rp_len);

 ev = skb_put(skb, sizeof(*ev) + rp_len);
 ev->opcode = cpu_to_le16(cmd);
 ev->status = status;

 if (rp)
  memcpy(ev->data, rp, rp_len);

 mskb = create_monitor_ctrl_event(hdr->index, hci_sock_get_cookie(sk),
      MGMT_EV_CMD_COMPLETE,
      sizeof(*ev) + rp_len, ev);
 if (mskb)
  skb->tstamp = mskb->tstamp;
 else
  __net_timestamp(skb);

 err = sock_queue_rcv_skb(sk, skb);
 if (err < 0)
  kfree_skb(skb);

 if (mskb) {
  hci_send_to_channel(HCI_CHANNEL_MONITOR, mskb,
        HCI_SOCK_TRUSTED, ((void*)0));
  kfree_skb(mskb);
 }

 return err;
}
