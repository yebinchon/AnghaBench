
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __refrigerator (int) ;
 int current ;
 int freezing (int ) ;
 int kthread_should_stop () ;
 int might_sleep () ;
 scalar_t__ unlikely (int ) ;

bool kthread_freezable_should_stop(bool *was_frozen)
{
 bool frozen = 0;

 might_sleep();

 if (unlikely(freezing(current)))
  frozen = __refrigerator(1);

 if (was_frozen)
  *was_frozen = frozen;

 return kthread_should_stop();
}
