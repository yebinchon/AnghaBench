
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct rfcomm_session {int flags; int state; } ;


 int BT_DBG (char*,struct rfcomm_session*,int ) ;
 int RFCOMM_TIMED_OUT ;
 struct rfcomm_session* from_timer (int ,struct timer_list*,int ) ;
 int rfcomm_schedule () ;
 struct rfcomm_session* s ;
 int set_bit (int ,int *) ;
 int timer ;

__attribute__((used)) static void rfcomm_session_timeout(struct timer_list *t)
{
 struct rfcomm_session *s = from_timer(s, t, timer);

 BT_DBG("session %p state %ld", s, s->state);

 set_bit(RFCOMM_TIMED_OUT, &s->flags);
 rfcomm_schedule();
}
