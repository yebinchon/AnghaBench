
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_wmem_alloc; } ;
struct sk_buff {int truesize; struct sock* sk; } ;


 int __sk_free (struct sock*) ;
 scalar_t__ refcount_sub_and_test (int ,int *) ;

void __sock_wfree(struct sk_buff *skb)
{
 struct sock *sk = skb->sk;

 if (refcount_sub_and_test(skb->truesize, &sk->sk_wmem_alloc))
  __sk_free(sk);
}
