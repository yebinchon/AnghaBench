
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_state; } ;
struct pppol2tp_session {int rcu; int sk_lock; int sk; int __sk; } ;
struct l2tp_session {int dummy; } ;


 int EBADF ;
 int PPPOX_DEAD ;
 int RCU_INIT_POINTER (int ,int *) ;
 int SOCK_DEAD ;
 int call_rcu (int *,int ) ;
 int l2tp_session_delete (struct l2tp_session*) ;
 struct pppol2tp_session* l2tp_session_priv (struct l2tp_session*) ;
 int lock_sock (struct sock*) ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pppol2tp_put_sk ;
 struct l2tp_session* pppol2tp_sock_to_session (struct sock*) ;
 int pppox_unbind_sock (struct sock*) ;
 int rcu_dereference_protected (int ,int ) ;
 int release_sock (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static int pppol2tp_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct l2tp_session *session;
 int error;

 if (!sk)
  return 0;

 error = -EBADF;
 lock_sock(sk);
 if (sock_flag(sk, SOCK_DEAD) != 0)
  goto error;

 pppox_unbind_sock(sk);


 sk->sk_state = PPPOX_DEAD;
 sock_orphan(sk);
 sock->sk = ((void*)0);

 session = pppol2tp_sock_to_session(sk);
 if (session) {
  struct pppol2tp_session *ps;

  l2tp_session_delete(session);

  ps = l2tp_session_priv(session);
  mutex_lock(&ps->sk_lock);
  ps->__sk = rcu_dereference_protected(ps->sk,
           lockdep_is_held(&ps->sk_lock));
  RCU_INIT_POINTER(ps->sk, ((void*)0));
  mutex_unlock(&ps->sk_lock);
  call_rcu(&ps->rcu, pppol2tp_put_sk);





 }

 release_sock(sk);





 sock_put(sk);

 return 0;

error:
 release_sock(sk);
 return error;
}
