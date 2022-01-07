
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dl_bw {int bw; scalar_t__ total_bw; int lock; } ;
struct TYPE_2__ {int dl_runtime_lock; } ;


 scalar_t__ RUNTIME_INF ;
 TYPE_1__ def_dl_bandwidth ;
 int global_rt_period () ;
 scalar_t__ global_rt_runtime () ;
 int raw_spin_lock (int *) ;
 int raw_spin_lock_init (int *) ;
 int raw_spin_unlock (int *) ;
 int to_ratio (int ,scalar_t__) ;

void init_dl_bw(struct dl_bw *dl_b)
{
 raw_spin_lock_init(&dl_b->lock);
 raw_spin_lock(&def_dl_bandwidth.dl_runtime_lock);
 if (global_rt_runtime() == RUNTIME_INF)
  dl_b->bw = -1;
 else
  dl_b->bw = to_ratio(global_rt_period(), global_rt_runtime());
 raw_spin_unlock(&def_dl_bandwidth.dl_runtime_lock);
 dl_b->total_bw = 0;
}
