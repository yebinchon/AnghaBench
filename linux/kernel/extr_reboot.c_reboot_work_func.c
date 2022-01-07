
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int __orderly_reboot () ;

__attribute__((used)) static void reboot_work_func(struct work_struct *work)
{
 __orderly_reboot();
}
