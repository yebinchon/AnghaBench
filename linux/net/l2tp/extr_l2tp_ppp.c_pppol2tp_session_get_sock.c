
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct pppol2tp_session {int sk; } ;
struct l2tp_session {int dummy; } ;


 struct pppol2tp_session* l2tp_session_priv (struct l2tp_session*) ;
 struct sock* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sock_hold (struct sock*) ;

__attribute__((used)) static struct sock *pppol2tp_session_get_sock(struct l2tp_session *session)
{
 struct pppol2tp_session *ps = l2tp_session_priv(session);
 struct sock *sk;

 rcu_read_lock();
 sk = rcu_dereference(ps->sk);
 if (sk)
  sock_hold(sk);
 rcu_read_unlock();

 return sk;
}
