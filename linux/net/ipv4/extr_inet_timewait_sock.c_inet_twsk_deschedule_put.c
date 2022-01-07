
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_timewait_sock {int tw_timer; } ;


 scalar_t__ del_timer_sync (int *) ;
 int inet_twsk_kill (struct inet_timewait_sock*) ;
 int inet_twsk_put (struct inet_timewait_sock*) ;

void inet_twsk_deschedule_put(struct inet_timewait_sock *tw)
{
 if (del_timer_sync(&tw->tw_timer))
  inet_twsk_kill(tw);
 inet_twsk_put(tw);
}
