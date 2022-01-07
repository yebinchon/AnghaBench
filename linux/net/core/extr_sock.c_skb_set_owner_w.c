
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_wmem_alloc; } ;
struct sk_buff {int truesize; int destructor; struct sock* sk; } ;


 int refcount_add (int ,int *) ;
 int sk_fullsock (struct sock*) ;
 int skb_orphan (struct sk_buff*) ;
 int skb_set_hash_from_sk (struct sk_buff*,struct sock*) ;
 int sock_edemux ;
 int sock_hold (struct sock*) ;
 int sock_wfree ;
 scalar_t__ unlikely (int) ;

void skb_set_owner_w(struct sk_buff *skb, struct sock *sk)
{
 skb_orphan(skb);
 skb->sk = sk;







 skb->destructor = sock_wfree;
 skb_set_hash_from_sk(skb, sk);





 refcount_add(skb->truesize, &sk->sk_wmem_alloc);
}
