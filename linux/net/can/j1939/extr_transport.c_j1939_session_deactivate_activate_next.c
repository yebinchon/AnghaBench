
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_session {int dummy; } ;


 scalar_t__ j1939_session_deactivate (struct j1939_session*) ;
 int j1939_sk_queue_activate_next (struct j1939_session*) ;

__attribute__((used)) static void
j1939_session_deactivate_activate_next(struct j1939_session *session)
{
 if (j1939_session_deactivate(session))
  j1939_sk_queue_activate_next(session);
}
