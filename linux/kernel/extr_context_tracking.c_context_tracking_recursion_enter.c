
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recursion; } ;


 int WARN_ONCE (int,char*,int) ;
 int __this_cpu_dec (int ) ;
 int __this_cpu_inc_return (int ) ;
 TYPE_1__ context_tracking ;

__attribute__((used)) static bool context_tracking_recursion_enter(void)
{
 int recursion;

 recursion = __this_cpu_inc_return(context_tracking.recursion);
 if (recursion == 1)
  return 1;

 WARN_ONCE((recursion < 1), "Invalid context tracking recursion value %d\n", recursion);
 __this_cpu_dec(context_tracking.recursion);

 return 0;
}
