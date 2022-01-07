
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct thread {int dummy; } ;
struct symbol {int dummy; } ;
struct ip_callchain {scalar_t__* ips; } ;
struct callchain_cursor {int dummy; } ;
struct addr_location {int dummy; } ;


 scalar_t__ PERF_CONTEXT_MAX ;
 int add_callchain_ip (struct thread*,struct callchain_cursor*,struct symbol**,struct addr_location*,int *,scalar_t__,int,int *,int *,int ) ;

__attribute__((used)) static int find_prev_cpumode(struct ip_callchain *chain, struct thread *thread,
        struct callchain_cursor *cursor,
        struct symbol **parent,
        struct addr_location *root_al,
        u8 *cpumode, int ent)
{
 int err = 0;

 while (--ent >= 0) {
  u64 ip = chain->ips[ent];

  if (ip >= PERF_CONTEXT_MAX) {
   err = add_callchain_ip(thread, cursor, parent,
            root_al, cpumode, ip,
            0, ((void*)0), ((void*)0), 0);
   break;
  }
 }
 return err;
}
