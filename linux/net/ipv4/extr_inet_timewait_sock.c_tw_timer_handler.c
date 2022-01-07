
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct inet_timewait_sock {scalar_t__ tw_kill; } ;


 int LINUX_MIB_TIMEWAITED ;
 int LINUX_MIB_TIMEWAITKILLED ;
 int __NET_INC_STATS (int ,int ) ;
 struct inet_timewait_sock* from_timer (int ,struct timer_list*,int ) ;
 int inet_twsk_kill (struct inet_timewait_sock*) ;
 struct inet_timewait_sock* tw ;
 int tw_timer ;
 int twsk_net (struct inet_timewait_sock*) ;

__attribute__((used)) static void tw_timer_handler(struct timer_list *t)
{
 struct inet_timewait_sock *tw = from_timer(tw, t, tw_timer);

 if (tw->tw_kill)
  __NET_INC_STATS(twsk_net(tw), LINUX_MIB_TIMEWAITKILLED);
 else
  __NET_INC_STATS(twsk_net(tw), LINUX_MIB_TIMEWAITED);
 inet_twsk_kill(tw);
}
