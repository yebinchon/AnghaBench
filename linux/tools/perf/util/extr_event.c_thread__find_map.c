
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct thread {struct map_groups* mg; } ;
struct map_groups {struct machine* machine; } ;
struct map {int (* map_ip ) (struct map*,int ) ;} ;
struct machine {struct map_groups kmaps; } ;
struct addr_location {int filtered; char level; struct map* map; int addr; scalar_t__ cpumode; struct thread* thread; struct machine* machine; } ;


 int HIST_FILTER__GUEST ;
 int HIST_FILTER__HOST ;
 scalar_t__ PERF_RECORD_MISC_GUEST_KERNEL ;
 scalar_t__ PERF_RECORD_MISC_GUEST_USER ;
 scalar_t__ PERF_RECORD_MISC_KERNEL ;
 scalar_t__ PERF_RECORD_MISC_USER ;
 int map__load (struct map*) ;
 struct map* map_groups__find (struct map_groups*,int ) ;
 scalar_t__ perf_guest ;
 scalar_t__ perf_host ;
 int stub1 (struct map*,int ) ;

struct map *thread__find_map(struct thread *thread, u8 cpumode, u64 addr,
        struct addr_location *al)
{
 struct map_groups *mg = thread->mg;
 struct machine *machine = mg->machine;
 bool load_map = 0;

 al->machine = machine;
 al->thread = thread;
 al->addr = addr;
 al->cpumode = cpumode;
 al->filtered = 0;

 if (machine == ((void*)0)) {
  al->map = ((void*)0);
  return ((void*)0);
 }

 if (cpumode == PERF_RECORD_MISC_KERNEL && perf_host) {
  al->level = 'k';
  mg = &machine->kmaps;
  load_map = 1;
 } else if (cpumode == PERF_RECORD_MISC_USER && perf_host) {
  al->level = '.';
 } else if (cpumode == PERF_RECORD_MISC_GUEST_KERNEL && perf_guest) {
  al->level = 'g';
  mg = &machine->kmaps;
  load_map = 1;
 } else if (cpumode == PERF_RECORD_MISC_GUEST_USER && perf_guest) {
  al->level = 'u';
 } else {
  al->level = 'H';
  al->map = ((void*)0);

  if ((cpumode == PERF_RECORD_MISC_GUEST_USER ||
   cpumode == PERF_RECORD_MISC_GUEST_KERNEL) &&
   !perf_guest)
   al->filtered |= (1 << HIST_FILTER__GUEST);
  if ((cpumode == PERF_RECORD_MISC_USER ||
   cpumode == PERF_RECORD_MISC_KERNEL) &&
   !perf_host)
   al->filtered |= (1 << HIST_FILTER__HOST);

  return ((void*)0);
 }

 al->map = map_groups__find(mg, al->addr);
 if (al->map != ((void*)0)) {




  if (load_map)
   map__load(al->map);
  al->addr = al->map->map_ip(al->map, al->addr);
 }

 return al->map;
}
