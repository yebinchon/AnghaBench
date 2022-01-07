
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __kthread_should_park (int ) ;
 int current ;

bool kthread_should_park(void)
{
 return __kthread_should_park(current);
}
