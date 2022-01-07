
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int KTHREAD_SHOULD_PARK ;
 int test_bit (int ,int *) ;
 TYPE_1__* to_kthread (struct task_struct*) ;

bool __kthread_should_park(struct task_struct *k)
{
 return test_bit(KTHREAD_SHOULD_PARK, &to_kthread(k)->flags);
}
