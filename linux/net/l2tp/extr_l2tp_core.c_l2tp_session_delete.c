
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2tp_session {int (* session_close ) (struct l2tp_session*) ;int dead; } ;


 int __l2tp_session_unhash (struct l2tp_session*) ;
 int l2tp_session_dec_refcount (struct l2tp_session*) ;
 int l2tp_session_queue_purge (struct l2tp_session*) ;
 int stub1 (struct l2tp_session*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

int l2tp_session_delete(struct l2tp_session *session)
{
 if (test_and_set_bit(0, &session->dead))
  return 0;

 __l2tp_session_unhash(session);
 l2tp_session_queue_purge(session);
 if (session->session_close != ((void*)0))
  (*session->session_close)(session);

 l2tp_session_dec_refcount(session);

 return 0;
}
