
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {char* data; } ;
struct msghdr {int msg_iter; } ;


 int EFAULT ;
 int ENOMEM ;
 int FB_MTU ;
 int FIRST_FRAGMENT ;
 int FRAGMENT ;
 int GFP_KERNEL ;
 int INT_H_SIZE ;
 int LAST_FRAGMENT ;
 int MAX_MSG_SIZE ;
 int MSG_FRAGMENTER ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_purge (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 scalar_t__ copy_from_iter_full (char*,int,int *) ;
 scalar_t__ likely (int) ;
 int msg_destnode (struct tipc_msg*) ;
 int msg_hdr_sz (struct tipc_msg*) ;
 int msg_importance (struct tipc_msg*) ;
 int msg_prevnode (struct tipc_msg*) ;
 int msg_set_fragm_no (struct tipc_msg*,int) ;
 int msg_set_importance (struct tipc_msg*,int ) ;
 int msg_set_size (struct tipc_msg*,int) ;
 int msg_set_type (struct tipc_msg*,int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,struct tipc_msg*,int) ;
 int skb_copy_to_linear_data_offset (struct sk_buff*,int,struct tipc_msg*,int) ;
 int skb_orphan (struct sk_buff*) ;
 struct sk_buff* tipc_buf_acquire (int,int ) ;
 scalar_t__ tipc_msg_assemble (struct sk_buff_head*) ;
 int tipc_msg_init (int ,struct tipc_msg*,int ,int ,int,int ) ;
 scalar_t__ unlikely (int) ;

int tipc_msg_build(struct tipc_msg *mhdr, struct msghdr *m, int offset,
     int dsz, int pktmax, struct sk_buff_head *list)
{
 int mhsz = msg_hdr_sz(mhdr);
 struct tipc_msg pkthdr;
 int msz = mhsz + dsz;
 int pktrem = pktmax;
 struct sk_buff *skb;
 int drem = dsz;
 int pktno = 1;
 char *pktpos;
 int pktsz;
 int rc;

 msg_set_size(mhdr, msz);


 if (likely(msz <= pktmax)) {
  skb = tipc_buf_acquire(msz, GFP_KERNEL);


  if (unlikely(!skb)) {
   if (pktmax != MAX_MSG_SIZE)
    return -ENOMEM;
   rc = tipc_msg_build(mhdr, m, offset, dsz, FB_MTU, list);
   if (rc != dsz)
    return rc;
   if (tipc_msg_assemble(list))
    return dsz;
   return -ENOMEM;
  }
  skb_orphan(skb);
  __skb_queue_tail(list, skb);
  skb_copy_to_linear_data(skb, mhdr, mhsz);
  pktpos = skb->data + mhsz;
  if (copy_from_iter_full(pktpos, dsz, &m->msg_iter))
   return dsz;
  rc = -EFAULT;
  goto error;
 }


 tipc_msg_init(msg_prevnode(mhdr), &pkthdr, MSG_FRAGMENTER,
        FIRST_FRAGMENT, INT_H_SIZE, msg_destnode(mhdr));
 msg_set_size(&pkthdr, pktmax);
 msg_set_fragm_no(&pkthdr, pktno);
 msg_set_importance(&pkthdr, msg_importance(mhdr));


 skb = tipc_buf_acquire(pktmax, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;
 skb_orphan(skb);
 __skb_queue_tail(list, skb);
 pktpos = skb->data;
 skb_copy_to_linear_data(skb, &pkthdr, INT_H_SIZE);
 pktpos += INT_H_SIZE;
 pktrem -= INT_H_SIZE;
 skb_copy_to_linear_data_offset(skb, INT_H_SIZE, mhdr, mhsz);
 pktpos += mhsz;
 pktrem -= mhsz;

 do {
  if (drem < pktrem)
   pktrem = drem;

  if (!copy_from_iter_full(pktpos, pktrem, &m->msg_iter)) {
   rc = -EFAULT;
   goto error;
  }
  drem -= pktrem;

  if (!drem)
   break;


  if (drem < (pktmax - INT_H_SIZE))
   pktsz = drem + INT_H_SIZE;
  else
   pktsz = pktmax;
  skb = tipc_buf_acquire(pktsz, GFP_KERNEL);
  if (!skb) {
   rc = -ENOMEM;
   goto error;
  }
  skb_orphan(skb);
  __skb_queue_tail(list, skb);
  msg_set_type(&pkthdr, FRAGMENT);
  msg_set_size(&pkthdr, pktsz);
  msg_set_fragm_no(&pkthdr, ++pktno);
  skb_copy_to_linear_data(skb, &pkthdr, INT_H_SIZE);
  pktpos = skb->data + INT_H_SIZE;
  pktrem = pktsz - INT_H_SIZE;

 } while (1);
 msg_set_type(buf_msg(skb), LAST_FRAGMENT);
 return dsz;
error:
 __skb_queue_purge(list);
 __skb_queue_head_init(list);
 return rc;
}
