
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int __orderly_poweroff (int ) ;
 int poweroff_force ;

__attribute__((used)) static void poweroff_work_func(struct work_struct *work)
{
 __orderly_poweroff(poweroff_force);
}
