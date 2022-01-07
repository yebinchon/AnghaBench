
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_session {int txtimer; } ;


 int HRTIMER_MODE_REL_SOFT ;
 int hrtimer_start (int *,int ,int ) ;
 int j1939_session_get (struct j1939_session*) ;
 int ms_to_ktime (int) ;

void j1939_tp_schedule_txtimer(struct j1939_session *session, int msec)
{
 j1939_session_get(session);
 hrtimer_start(&session->txtimer, ms_to_ktime(msec),
        HRTIMER_MODE_REL_SOFT);
}
