
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct callchain_cursor_node {int ip; int srcline; int * sym; TYPE_1__* map; } ;
struct addr_location {char level; int cpumode; TYPE_2__* machine; TYPE_1__* map; int * sym; int addr; int srcline; } ;
struct TYPE_4__ {int kmaps; } ;
struct TYPE_3__ {int * groups; } ;


 int PERF_RECORD_MISC_GUEST_KERNEL ;
 int PERF_RECORD_MISC_GUEST_USER ;
 int PERF_RECORD_MISC_HYPERVISOR ;
 int PERF_RECORD_MISC_KERNEL ;
 int PERF_RECORD_MISC_USER ;
 scalar_t__ machine__is_host (TYPE_2__*) ;
 scalar_t__ perf_guest ;

int fill_callchain_info(struct addr_location *al, struct callchain_cursor_node *node,
   bool hide_unresolved)
{
 al->map = node->map;
 al->sym = node->sym;
 al->srcline = node->srcline;
 al->addr = node->ip;

 if (al->sym == ((void*)0)) {
  if (hide_unresolved)
   return 0;
  if (al->map == ((void*)0))
   goto out;
 }

 if (al->map->groups == &al->machine->kmaps) {
  if (machine__is_host(al->machine)) {
   al->cpumode = PERF_RECORD_MISC_KERNEL;
   al->level = 'k';
  } else {
   al->cpumode = PERF_RECORD_MISC_GUEST_KERNEL;
   al->level = 'g';
  }
 } else {
  if (machine__is_host(al->machine)) {
   al->cpumode = PERF_RECORD_MISC_USER;
   al->level = '.';
  } else if (perf_guest) {
   al->cpumode = PERF_RECORD_MISC_GUEST_USER;
   al->level = 'u';
  } else {
   al->cpumode = PERF_RECORD_MISC_HYPERVISOR;
   al->level = 'H';
  }
 }

out:
 return 1;
}
