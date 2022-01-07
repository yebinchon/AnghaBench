
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_session {int timer; int state; } ;


 int BT_DBG (char*,struct rfcomm_session*,int ) ;
 int del_timer_sync (int *) ;

__attribute__((used)) static void rfcomm_session_clear_timer(struct rfcomm_session *s)
{
 BT_DBG("session %p state %ld", s, s->state);

 del_timer_sync(&s->timer);
}
