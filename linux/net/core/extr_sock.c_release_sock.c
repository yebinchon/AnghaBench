
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int slock; int wq; } ;
struct TYPE_5__ {scalar_t__ tail; } ;
struct sock {TYPE_1__ sk_lock; TYPE_3__* sk_prot; TYPE_2__ sk_backlog; } ;
struct TYPE_6__ {int (* release_cb ) (struct sock*) ;} ;


 int __release_sock (struct sock*) ;
 int sock_release_ownership (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct sock*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

void release_sock(struct sock *sk)
{
 spin_lock_bh(&sk->sk_lock.slock);
 if (sk->sk_backlog.tail)
  __release_sock(sk);




 if (sk->sk_prot->release_cb)
  sk->sk_prot->release_cb(sk);

 sock_release_ownership(sk);
 if (waitqueue_active(&sk->sk_lock.wq))
  wake_up(&sk->sk_lock.wq);
 spin_unlock_bh(&sk->sk_lock.slock);
}
