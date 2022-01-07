
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int evlist__disable (int ) ;
 int evsel_list ;
 int target ;
 int target__none (int *) ;

__attribute__((used)) static void disable_counters(void)
{





 if (!target__none(&target))
  evlist__disable(evsel_list);
}
