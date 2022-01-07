
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ee_origin; int ee_errno; } ;
struct sock_exterr_skb {TYPE_1__ ee; } ;
struct sock {int sk_refcnt; } ;
struct sk_buff {int wifi_acked_valid; int wifi_acked; struct sock* sk; } ;


 int ENOMSG ;
 struct sock_exterr_skb* SKB_EXT_ERR (struct sk_buff*) ;
 int SO_EE_ORIGIN_TXSTATUS ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int ) ;
 int memset (struct sock_exterr_skb*,int ,int) ;
 int refcount_inc_not_zero (int *) ;
 int sock_put (struct sock*) ;
 int sock_queue_err_skb (struct sock*,struct sk_buff*) ;

void skb_complete_wifi_ack(struct sk_buff *skb, bool acked)
{
 struct sock *sk = skb->sk;
 struct sock_exterr_skb *serr;
 int err = 1;

 skb->wifi_acked_valid = 1;
 skb->wifi_acked = acked;

 serr = SKB_EXT_ERR(skb);
 memset(serr, 0, sizeof(*serr));
 serr->ee.ee_errno = ENOMSG;
 serr->ee.ee_origin = SO_EE_ORIGIN_TXSTATUS;




 if (likely(refcount_inc_not_zero(&sk->sk_refcnt))) {
  err = sock_queue_err_skb(sk, skb);
  sock_put(sk);
 }
 if (err)
  kfree_skb(skb);
}
