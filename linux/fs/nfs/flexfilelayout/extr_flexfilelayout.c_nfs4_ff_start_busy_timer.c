
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ff_busy_timer {int start_time; int n_ops; } ;
typedef int ktime_t ;


 int atomic_inc_return (int *) ;

__attribute__((used)) static void
nfs4_ff_start_busy_timer(struct nfs4_ff_busy_timer *timer, ktime_t now)
{

 if (atomic_inc_return(&timer->n_ops) == 1) {
  timer->start_time = now;
 }
}
