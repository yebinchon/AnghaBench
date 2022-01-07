
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct TYPE_4__ {struct sock* private; } ;
struct unix_sock {TYPE_1__ peer_wait; TYPE_2__ peer_wake; } ;
struct sock {int dummy; } ;


 int __remove_wait_queue (TYPE_1__*,TYPE_2__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct unix_sock* unix_sk (struct sock*) ;

__attribute__((used)) static void unix_dgram_peer_wake_disconnect(struct sock *sk,
         struct sock *other)
{
 struct unix_sock *u, *u_other;

 u = unix_sk(sk);
 u_other = unix_sk(other);
 spin_lock(&u_other->peer_wait.lock);

 if (u->peer_wake.private == other) {
  __remove_wait_queue(&u_other->peer_wait, &u->peer_wake);
  u->peer_wake.private = ((void*)0);
 }

 spin_unlock(&u_other->peer_wait.lock);
}
