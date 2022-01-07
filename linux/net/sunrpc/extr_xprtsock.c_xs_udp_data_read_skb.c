
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct rpc_xprt {int queue_lock; int transport_lock; } ;
struct rpc_task {int dummy; } ;
struct TYPE_2__ {int buflen; } ;
struct rpc_rqst {TYPE_1__ rq_private_buf; struct rpc_task* rq_task; } ;
typedef int _xid ;
typedef int __be32 ;


 int UDP_MIB_INDATAGRAMS ;
 int UDP_MIB_INERRORS ;
 int __UDPX_INC_STATS (struct sock*,int ) ;
 scalar_t__ csum_partial_copy_to_xdr (TYPE_1__*,struct sk_buff*) ;
 int dprintk (char*,int) ;
 int * skb_header_pointer (struct sk_buff*,int ,int,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xprt_adjust_cwnd (struct rpc_xprt*,struct rpc_task*,int) ;
 int xprt_complete_rqst (struct rpc_task*,int) ;
 struct rpc_rqst* xprt_lookup_rqst (struct rpc_xprt*,int ) ;
 int xprt_pin_rqst (struct rpc_rqst*) ;
 int xprt_unpin_rqst (struct rpc_rqst*) ;
 int xprt_update_rtt (struct rpc_task*) ;

__attribute__((used)) static void xs_udp_data_read_skb(struct rpc_xprt *xprt,
  struct sock *sk,
  struct sk_buff *skb)
{
 struct rpc_task *task;
 struct rpc_rqst *rovr;
 int repsize, copied;
 u32 _xid;
 __be32 *xp;

 repsize = skb->len;
 if (repsize < 4) {
  dprintk("RPC:       impossible RPC reply size %d!\n", repsize);
  return;
 }


 xp = skb_header_pointer(skb, 0, sizeof(_xid), &_xid);
 if (xp == ((void*)0))
  return;


 spin_lock(&xprt->queue_lock);
 rovr = xprt_lookup_rqst(xprt, *xp);
 if (!rovr)
  goto out_unlock;
 xprt_pin_rqst(rovr);
 xprt_update_rtt(rovr->rq_task);
 spin_unlock(&xprt->queue_lock);
 task = rovr->rq_task;

 if ((copied = rovr->rq_private_buf.buflen) > repsize)
  copied = repsize;


 if (csum_partial_copy_to_xdr(&rovr->rq_private_buf, skb)) {
  spin_lock(&xprt->queue_lock);
  __UDPX_INC_STATS(sk, UDP_MIB_INERRORS);
  goto out_unpin;
 }


 spin_lock(&xprt->transport_lock);
 xprt_adjust_cwnd(xprt, task, copied);
 spin_unlock(&xprt->transport_lock);
 spin_lock(&xprt->queue_lock);
 xprt_complete_rqst(task, copied);
 __UDPX_INC_STATS(sk, UDP_MIB_INDATAGRAMS);
out_unpin:
 xprt_unpin_rqst(rovr);
 out_unlock:
 spin_unlock(&xprt->queue_lock);
}
