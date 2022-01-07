
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_wmem_alloc; } ;


 int __sk_free (struct sock*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void sk_free(struct sock *sk)
{





 if (refcount_dec_and_test(&sk->sk_wmem_alloc))
  __sk_free(sk);
}
