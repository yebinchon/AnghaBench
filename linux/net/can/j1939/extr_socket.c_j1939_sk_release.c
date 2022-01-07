
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int sa; int src_name; } ;
struct j1939_sock {int state; int filters; TYPE_1__ addr; int sk; int waitq; struct j1939_priv* priv; } ;
struct j1939_priv {int dummy; } ;


 int ESHUTDOWN ;
 int J1939_SOCK_BOUND ;
 int j1939_cancel_active_session (struct j1939_priv*,struct sock*) ;
 int j1939_jsk_del (struct j1939_priv*,struct j1939_sock*) ;
 int j1939_local_ecu_put (struct j1939_priv*,int ,int ) ;
 int j1939_netdev_stop (struct j1939_priv*) ;
 struct j1939_sock* j1939_sk (struct sock*) ;
 int j1939_sk_queue_drop_all (struct j1939_priv*,struct j1939_sock*,int ) ;
 int j1939_sock_pending_get (int *) ;
 int kfree (int ) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;
 scalar_t__ wait_event_interruptible (int ,int) ;

__attribute__((used)) static int j1939_sk_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct j1939_sock *jsk;

 if (!sk)
  return 0;

 jsk = j1939_sk(sk);
 lock_sock(sk);

 if (jsk->state & J1939_SOCK_BOUND) {
  struct j1939_priv *priv = jsk->priv;

  if (wait_event_interruptible(jsk->waitq,
          !j1939_sock_pending_get(&jsk->sk))) {
   j1939_cancel_active_session(priv, sk);
   j1939_sk_queue_drop_all(priv, jsk, ESHUTDOWN);
  }

  j1939_jsk_del(priv, jsk);

  j1939_local_ecu_put(priv, jsk->addr.src_name,
        jsk->addr.sa);

  j1939_netdev_stop(priv);
 }

 kfree(jsk->filters);
 sock_orphan(sk);
 sock->sk = ((void*)0);

 release_sock(sk);
 sock_put(sk);

 return 0;
}
