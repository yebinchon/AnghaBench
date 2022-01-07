
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* delays; } ;
struct TYPE_3__ {int thrashing_start; } ;


 TYPE_2__* current ;
 int ktime_get_ns () ;

void __delayacct_thrashing_start(void)
{
 current->delays->thrashing_start = ktime_get_ns();
}
