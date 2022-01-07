
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int KTHREAD_SHOULD_STOP ;
 int current ;
 int test_bit (int ,int *) ;
 TYPE_1__* to_kthread (int ) ;

bool kthread_should_stop(void)
{
 return test_bit(KTHREAD_SHOULD_STOP, &to_kthread(current)->flags);
}
