
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_dec (int *) ;
 int nr_freq_events ;
 scalar_t__ tick_nohz_full_enabled () ;
 int unaccount_freq_event_nohz () ;

__attribute__((used)) static void unaccount_freq_event(void)
{
 if (tick_nohz_full_enabled())
  unaccount_freq_event_nohz();
 else
  atomic_dec(&nr_freq_events);
}
