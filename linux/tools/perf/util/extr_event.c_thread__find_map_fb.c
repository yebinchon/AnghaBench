
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
struct thread {TYPE_1__* mg; } ;
struct map {int dummy; } ;
struct machine {int dummy; } ;
struct addr_location {int dummy; } ;
struct TYPE_2__ {struct machine* machine; } ;


 scalar_t__ machine__addr_cpumode (struct machine*,scalar_t__,int ) ;
 struct map* thread__find_map (struct thread*,scalar_t__,int ,struct addr_location*) ;

struct map *thread__find_map_fb(struct thread *thread, u8 cpumode, u64 addr,
    struct addr_location *al)
{
 struct map *map = thread__find_map(thread, cpumode, addr, al);
 struct machine *machine = thread->mg->machine;
 u8 addr_cpumode = machine__addr_cpumode(machine, cpumode, addr);

 if (map || addr_cpumode == cpumode)
  return map;

 return thread__find_map(thread, addr_cpumode, addr, al);
}
