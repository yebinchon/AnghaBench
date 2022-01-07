
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct str_values {int val; char const* str; } ;
struct TYPE_2__ {unsigned int isa; struct str_values* strings; } ;


 TYPE_1__* isa_exit_reasons ;

__attribute__((used)) static const char *find_exit_reason(unsigned isa, int val)
{
 struct str_values *strings = ((void*)0);
 int i;

 for (i = 0; isa_exit_reasons[i].strings; ++i)
  if (isa_exit_reasons[i].isa == isa) {
   strings = isa_exit_reasons[i].strings;
   break;
  }
 if (!strings)
  return "UNKNOWN-ISA";
 for (i = 0; strings[i].val >= 0; i++)
  if (strings[i].val == val)
   break;

 return strings[i].str;
}
