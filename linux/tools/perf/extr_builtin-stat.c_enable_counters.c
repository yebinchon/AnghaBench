
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initial_delay; } ;


 int USEC_PER_MSEC ;
 int evlist__enable (int ) ;
 int evsel_list ;
 TYPE_1__ stat_config ;
 int target ;
 int target__none (int *) ;
 int usleep (int) ;

__attribute__((used)) static void enable_counters(void)
{
 if (stat_config.initial_delay)
  usleep(stat_config.initial_delay * USEC_PER_MSEC);






 if (!target__none(&target) || stat_config.initial_delay)
  evlist__enable(evsel_list);
}
