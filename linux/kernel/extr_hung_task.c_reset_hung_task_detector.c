
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_set (int *,int) ;
 int reset_hung_task ;

void reset_hung_task_detector(void)
{
 atomic_set(&reset_hung_task, 1);
}
