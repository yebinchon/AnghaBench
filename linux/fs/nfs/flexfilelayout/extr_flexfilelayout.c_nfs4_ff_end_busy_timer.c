
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ff_busy_timer {int start_time; int n_ops; } ;
typedef int ktime_t ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic_dec_return (int *) ;
 int ktime_sub (int ,int ) ;

__attribute__((used)) static ktime_t
nfs4_ff_end_busy_timer(struct nfs4_ff_busy_timer *timer, ktime_t now)
{
 ktime_t start;

 if (atomic_dec_return(&timer->n_ops) < 0)
  WARN_ON_ONCE(1);

 start = timer->start_time;
 timer->start_time = now;
 return ktime_sub(now, start);
}
