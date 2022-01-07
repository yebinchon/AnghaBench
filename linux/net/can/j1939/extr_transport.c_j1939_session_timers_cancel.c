
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_session {int dummy; } ;


 int j1939_session_rxtimer_cancel (struct j1939_session*) ;
 int j1939_session_txtimer_cancel (struct j1939_session*) ;

void j1939_session_timers_cancel(struct j1939_session *session)
{
 j1939_session_txtimer_cancel(session);
 j1939_session_rxtimer_cancel(session);
}
