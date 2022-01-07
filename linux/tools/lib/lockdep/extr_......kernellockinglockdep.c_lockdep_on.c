
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lockdep_recursion; } ;


 TYPE_1__* current ;

void lockdep_on(void)
{
 current->lockdep_recursion--;
}
