
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_sock {int sk; int sk_session_queue_lock; int sk_session_queue; } ;
struct j1939_session {int sk_session_queue_entry; int sk; } ;


 int j1939_session_get (struct j1939_session*) ;
 struct j1939_sock* j1939_sk (int ) ;
 int j1939_sock_pending_add (int *) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool j1939_sk_queue_session(struct j1939_session *session)
{
 struct j1939_sock *jsk = j1939_sk(session->sk);
 bool empty;

 spin_lock_bh(&jsk->sk_session_queue_lock);
 empty = list_empty(&jsk->sk_session_queue);
 j1939_session_get(session);
 list_add_tail(&session->sk_session_queue_entry, &jsk->sk_session_queue);
 spin_unlock_bh(&jsk->sk_session_queue_lock);
 j1939_sock_pending_add(&jsk->sk);

 return empty;
}
