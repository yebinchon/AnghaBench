
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int (* sk_write_space ) (struct sock*) ;int sk_wmem_alloc; } ;
struct sk_buff {int dummy; } ;
struct atm_vcc {int vci; } ;
struct TYPE_2__ {int acct_truesize; } ;


 TYPE_1__* ATM_SKB (struct sk_buff*) ;
 int WARN_ON (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int pr_debug (char*,int ,int ,int ) ;
 int refcount_sub_and_test (int ,int *) ;
 struct sock* sk_atm (struct atm_vcc*) ;
 int sk_wmem_alloc_get (struct sock*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void atm_pop_raw(struct atm_vcc *vcc, struct sk_buff *skb)
{
 struct sock *sk = sk_atm(vcc);

 pr_debug("(%d) %d -= %d\n",
   vcc->vci, sk_wmem_alloc_get(sk), ATM_SKB(skb)->acct_truesize);
 WARN_ON(refcount_sub_and_test(ATM_SKB(skb)->acct_truesize, &sk->sk_wmem_alloc));
 dev_kfree_skb_any(skb);
 sk->sk_write_space(sk);
}
