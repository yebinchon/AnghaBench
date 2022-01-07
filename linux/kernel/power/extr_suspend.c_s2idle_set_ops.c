
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_s2idle_ops {int dummy; } ;


 int lock_system_sleep () ;
 struct platform_s2idle_ops const* s2idle_ops ;
 int unlock_system_sleep () ;

void s2idle_set_ops(const struct platform_s2idle_ops *ops)
{
 lock_system_sleep();
 s2idle_ops = ops;
 unlock_system_sleep();
}
