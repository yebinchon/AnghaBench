
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int __cancel_work_timer (struct work_struct*,int) ;

bool cancel_work_sync(struct work_struct *work)
{
 return __cancel_work_timer(work, 0);
}
