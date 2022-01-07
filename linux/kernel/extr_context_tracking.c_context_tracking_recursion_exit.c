
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recursion; } ;


 int __this_cpu_dec (int ) ;
 TYPE_1__ context_tracking ;

__attribute__((used)) static void context_tracking_recursion_exit(void)
{
 __this_cpu_dec(context_tracking.recursion);
}
