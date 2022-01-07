
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int account_freq_event_nohz () ;
 int atomic_inc (int *) ;
 int nr_freq_events ;
 scalar_t__ tick_nohz_full_enabled () ;

__attribute__((used)) static void account_freq_event(void)
{
 if (tick_nohz_full_enabled())
  account_freq_event_nohz();
 else
  atomic_inc(&nr_freq_events);
}
