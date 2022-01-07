
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_session {int rxtimer; } ;


 int HRTIMER_MODE_REL_SOFT ;
 int hrtimer_start (int *,int ,int ) ;
 int j1939_session_get (struct j1939_session*) ;
 int j1939_session_rxtimer_cancel (struct j1939_session*) ;
 int ms_to_ktime (int) ;

__attribute__((used)) static inline void j1939_tp_set_rxtimeout(struct j1939_session *session,
       int msec)
{
 j1939_session_rxtimer_cancel(session);
 j1939_session_get(session);
 hrtimer_start(&session->rxtimer, ms_to_ktime(msec),
        HRTIMER_MODE_REL_SOFT);
}
