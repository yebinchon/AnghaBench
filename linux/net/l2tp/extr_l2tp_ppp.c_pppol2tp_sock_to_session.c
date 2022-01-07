
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_user_data; } ;
struct l2tp_session {scalar_t__ magic; } ;


 int BUG_ON (int) ;
 scalar_t__ L2TP_SESSION_MAGIC ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static inline struct l2tp_session *pppol2tp_sock_to_session(struct sock *sk)
{
 struct l2tp_session *session;

 if (sk == ((void*)0))
  return ((void*)0);

 sock_hold(sk);
 session = (struct l2tp_session *)(sk->sk_user_data);
 if (session == ((void*)0)) {
  sock_put(sk);
  goto out;
 }

 BUG_ON(session->magic != L2TP_SESSION_MAGIC);

out:
 return session;
}
