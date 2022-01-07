
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct dl_bandwidth {void* dl_runtime; void* dl_period; int dl_runtime_lock; } ;


 int raw_spin_lock_init (int *) ;

void init_dl_bandwidth(struct dl_bandwidth *dl_b, u64 period, u64 runtime)
{
 raw_spin_lock_init(&dl_b->dl_runtime_lock);
 dl_b->dl_period = period;
 dl_b->dl_runtime = runtime;
}
