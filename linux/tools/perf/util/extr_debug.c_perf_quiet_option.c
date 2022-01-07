
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_variable {int* ptr; scalar_t__ name; } ;


 struct debug_variable* debug_variables ;

int perf_quiet_option(void)
{
 struct debug_variable *var = &debug_variables[0];


 while (var->name) {
  *var->ptr = -1;
  var++;
 }

 return 0;
}
