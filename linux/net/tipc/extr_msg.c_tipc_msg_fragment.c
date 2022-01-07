
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tipc_msg {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int INT_H_SIZE ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_purge (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int msg_set_fragm_no (struct tipc_msg*,int) ;
 int msg_set_nof_fragms (struct tipc_msg*,int) ;
 int msg_set_size (struct tipc_msg*,int) ;
 int msg_size (struct tipc_msg*) ;
 int skb_copy_to_linear_data (struct sk_buff*,struct tipc_msg const*,int) ;
 int skb_copy_to_linear_data_offset (struct sk_buff*,int,int *,int) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 struct sk_buff* tipc_buf_acquire (int,int ) ;

int tipc_msg_fragment(struct sk_buff *skb, const struct tipc_msg *hdr,
        int pktmax, struct sk_buff_head *frags)
{
 int pktno, nof_fragms, dsz, dmax, eat;
 struct tipc_msg *_hdr;
 struct sk_buff *_skb;
 u8 *data;


 if (skb_linearize(skb))
  return -ENOMEM;

 data = (u8 *)skb->data;
 dsz = msg_size(buf_msg(skb));
 dmax = pktmax - INT_H_SIZE;
 if (dsz <= dmax || !dmax)
  return -EINVAL;

 nof_fragms = dsz / dmax + 1;
 for (pktno = 1; pktno <= nof_fragms; pktno++) {
  if (pktno < nof_fragms)
   eat = dmax;
  else
   eat = dsz % dmax;

  _skb = tipc_buf_acquire(INT_H_SIZE + eat, GFP_ATOMIC);
  if (!_skb)
   goto error;
  skb_orphan(_skb);
  __skb_queue_tail(frags, _skb);

  skb_copy_to_linear_data(_skb, hdr, INT_H_SIZE);
  skb_copy_to_linear_data_offset(_skb, INT_H_SIZE, data, eat);
  data += eat;

  _hdr = buf_msg(_skb);
  msg_set_fragm_no(_hdr, pktno);
  msg_set_nof_fragms(_hdr, nof_fragms);
  msg_set_size(_hdr, INT_H_SIZE + eat);
 }
 return 0;

error:
 __skb_queue_purge(frags);
 __skb_queue_head_init(frags);
 return -ENOMEM;
}
