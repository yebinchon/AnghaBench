
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fprop_local_single {int lock; scalar_t__ period; scalar_t__ events; } ;


 int raw_spin_lock_init (int *) ;

int fprop_local_init_single(struct fprop_local_single *pl)
{
 pl->events = 0;
 pl->period = 0;
 raw_spin_lock_init(&pl->lock);
 return 0;
}
