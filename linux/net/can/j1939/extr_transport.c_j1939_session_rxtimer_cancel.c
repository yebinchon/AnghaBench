
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_session {int rxtimer; } ;


 scalar_t__ hrtimer_cancel (int *) ;
 int j1939_session_put (struct j1939_session*) ;

__attribute__((used)) static void j1939_session_rxtimer_cancel(struct j1939_session *session)
{
 if (hrtimer_cancel(&session->rxtimer))
  j1939_session_put(session);
}
