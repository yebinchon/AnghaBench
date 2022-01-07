
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fprop_local_percpu {int lock; scalar_t__ period; int events; } ;
typedef int gfp_t ;


 int percpu_counter_init (int *,int ,int ) ;
 int raw_spin_lock_init (int *) ;

int fprop_local_init_percpu(struct fprop_local_percpu *pl, gfp_t gfp)
{
 int err;

 err = percpu_counter_init(&pl->events, 0, gfp);
 if (err)
  return err;
 pl->period = 0;
 raw_spin_lock_init(&pl->lock);
 return 0;
}
