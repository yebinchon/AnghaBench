
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int * sk_destruct; } ;


 int bh_unlock_sock (struct sock*) ;
 int sk_free (struct sock*) ;

void sk_free_unlock_clone(struct sock *sk)
{


 sk->sk_destruct = ((void*)0);
 bh_unlock_sock(sk);
 sk_free(sk);
}
