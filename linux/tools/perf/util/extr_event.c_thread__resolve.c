
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct perf_sample {int cpu; int addr; int cpumode; } ;
struct addr_location {int addr; scalar_t__ map; int * sym; int cpu; } ;


 int * map__find_symbol (scalar_t__,int ) ;
 int thread__find_map_fb (struct thread*,int ,int ,struct addr_location*) ;

void thread__resolve(struct thread *thread, struct addr_location *al,
       struct perf_sample *sample)
{
 thread__find_map_fb(thread, sample->cpumode, sample->addr, al);

 al->cpu = sample->cpu;
 al->sym = ((void*)0);

 if (al->map)
  al->sym = map__find_symbol(al->map, al->addr);
}
