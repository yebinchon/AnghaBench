
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_sock {int sk_session_queue_lock; } ;
struct j1939_session {int sk; } ;


 struct j1939_sock* j1939_sk (int ) ;
 int j1939_sk_queue_activate_next_locked (struct j1939_session*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void j1939_sk_queue_activate_next(struct j1939_session *session)
{
 struct j1939_sock *jsk;

 if (!session->sk)
  return;

 jsk = j1939_sk(session->sk);

 spin_lock_bh(&jsk->sk_session_queue_lock);
 j1939_sk_queue_activate_next_locked(session);
 spin_unlock_bh(&jsk->sk_session_queue_lock);
}
