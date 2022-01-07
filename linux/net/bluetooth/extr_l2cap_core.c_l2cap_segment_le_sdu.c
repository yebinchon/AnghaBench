
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct l2cap_chan {size_t remote_mps; } ;


 int BT_DBG (char*,struct l2cap_chan*,struct msghdr*,size_t) ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 size_t L2CAP_SDULEN_SIZE ;
 int PTR_ERR (struct sk_buff*) ;
 int __skb_queue_purge (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 struct sk_buff* l2cap_create_le_flowctl_pdu (struct l2cap_chan*,struct msghdr*,size_t,size_t) ;

__attribute__((used)) static int l2cap_segment_le_sdu(struct l2cap_chan *chan,
    struct sk_buff_head *seg_queue,
    struct msghdr *msg, size_t len)
{
 struct sk_buff *skb;
 size_t pdu_len;
 u16 sdu_len;

 BT_DBG("chan %p, msg %p, len %zu", chan, msg, len);

 sdu_len = len;
 pdu_len = chan->remote_mps - L2CAP_SDULEN_SIZE;

 while (len > 0) {
  if (len <= pdu_len)
   pdu_len = len;

  skb = l2cap_create_le_flowctl_pdu(chan, msg, pdu_len, sdu_len);
  if (IS_ERR(skb)) {
   __skb_queue_purge(seg_queue);
   return PTR_ERR(skb);
  }

  __skb_queue_tail(seg_queue, skb);

  len -= pdu_len;

  if (sdu_len) {
   sdu_len = 0;
   pdu_len += L2CAP_SDULEN_SIZE;
  }
 }

 return 0;
}
