
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int reason; char const* name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* exit_reasons_known ;

const char *exit_reason_str(unsigned int exit_reason)
{
 unsigned int n1;

 for (n1 = 0; n1 < ARRAY_SIZE(exit_reasons_known); n1++) {
  if (exit_reason == exit_reasons_known[n1].reason)
   return exit_reasons_known[n1].name;
 }

 return "Unknown";
}
