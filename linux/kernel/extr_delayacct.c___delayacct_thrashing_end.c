
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* delays; } ;
struct TYPE_3__ {int thrashing_count; int thrashing_delay; int thrashing_start; int lock; } ;


 TYPE_2__* current ;
 int delayacct_end (int *,int *,int *,int *) ;

void __delayacct_thrashing_end(void)
{
 delayacct_end(&current->delays->lock,
        &current->delays->thrashing_start,
        &current->delays->thrashing_delay,
        &current->delays->thrashing_count);
}
