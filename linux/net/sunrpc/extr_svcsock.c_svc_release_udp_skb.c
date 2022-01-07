
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct sk_buff* rq_xprt_ctxt; } ;
struct sk_buff {int dummy; } ;


 int consume_skb (struct sk_buff*) ;
 int dprintk (char*,struct svc_rqst*,struct sk_buff*) ;

__attribute__((used)) static void svc_release_udp_skb(struct svc_rqst *rqstp)
{
 struct sk_buff *skb = rqstp->rq_xprt_ctxt;

 if (skb) {
  rqstp->rq_xprt_ctxt = ((void*)0);

  dprintk("svc: service %p, releasing skb %p\n", rqstp, skb);
  consume_skb(skb);
 }
}
