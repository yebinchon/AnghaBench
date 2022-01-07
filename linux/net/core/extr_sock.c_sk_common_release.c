
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_2__ {int (* unhash ) (struct sock*) ;int (* destroy ) (struct sock*) ;} ;


 int sk_refcnt_debug_release (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 int xfrm_sk_free_policy (struct sock*) ;

void sk_common_release(struct sock *sk)
{
 if (sk->sk_prot->destroy)
  sk->sk_prot->destroy(sk);
 sk->sk_prot->unhash(sk);
 sock_orphan(sk);

 xfrm_sk_free_policy(sk);

 sk_refcnt_debug_release(sk);

 sock_put(sk);
}
