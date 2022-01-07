
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __kthread_parkme (int ) ;
 int current ;
 int to_kthread (int ) ;

void kthread_parkme(void)
{
 __kthread_parkme(to_kthread(current));
}
