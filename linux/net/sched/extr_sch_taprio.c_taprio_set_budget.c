
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct taprio_sched {int picos_per_byte; } ;
struct sched_entry {scalar_t__ interval; int budget; } ;


 int atomic64_read (int *) ;
 int atomic_set (int *,int ) ;
 int div64_u64 (int,int ) ;

__attribute__((used)) static void taprio_set_budget(struct taprio_sched *q, struct sched_entry *entry)
{
 atomic_set(&entry->budget,
     div64_u64((u64)entry->interval * 1000,
        atomic64_read(&q->picos_per_byte)));
}
