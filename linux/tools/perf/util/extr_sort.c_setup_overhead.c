
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cumulate_callchain; } ;


 scalar_t__ SORT_MODE__DIFF ;
 char* prefix_if_not_in (char*,char*) ;
 scalar_t__ sort__mode ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static char *setup_overhead(char *keys)
{
 if (sort__mode == SORT_MODE__DIFF)
  return keys;

 keys = prefix_if_not_in("overhead", keys);

 if (symbol_conf.cumulate_callchain)
  keys = prefix_if_not_in("overhead_children", keys);

 return keys;
}
