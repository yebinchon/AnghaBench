
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct thread {int dummy; } ;
struct addr_location {scalar_t__ map; } ;


 size_t ARRAY_SIZE (int const*) ;
 int const PERF_RECORD_MISC_GUEST_KERNEL ;
 int const PERF_RECORD_MISC_GUEST_USER ;
 int const PERF_RECORD_MISC_KERNEL ;
 int const PERF_RECORD_MISC_USER ;
 int thread__find_symbol (struct thread*,int const,int ,struct addr_location*) ;

void thread__find_cpumode_addr_location(struct thread *thread, u64 addr,
     struct addr_location *al)
{
 size_t i;
 const u8 cpumodes[] = {
  PERF_RECORD_MISC_USER,
  PERF_RECORD_MISC_KERNEL,
  PERF_RECORD_MISC_GUEST_USER,
  PERF_RECORD_MISC_GUEST_KERNEL
 };

 for (i = 0; i < ARRAY_SIZE(cpumodes); i++) {
  thread__find_symbol(thread, cpumodes[i], addr, al);
  if (al->map)
   break;
 }
}
