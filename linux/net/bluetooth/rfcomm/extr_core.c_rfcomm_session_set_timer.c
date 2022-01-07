
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_session {int timer; int state; } ;


 int BT_DBG (char*,struct rfcomm_session*,int ,long) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void rfcomm_session_set_timer(struct rfcomm_session *s, long timeout)
{
 BT_DBG("session %p state %ld timeout %ld", s, s->state, timeout);

 mod_timer(&s->timer, jiffies + timeout);
}
