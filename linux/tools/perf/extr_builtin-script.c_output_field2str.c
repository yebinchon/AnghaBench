
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum perf_output_field { ____Placeholder_perf_output_field } perf_output_field ;
struct TYPE_3__ {int field; char* str; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* all_output_options ;

__attribute__((used)) static const char *output_field2str(enum perf_output_field field)
{
 int i, imax = ARRAY_SIZE(all_output_options);
 const char *str = "";

 for (i = 0; i < imax; ++i) {
  if (all_output_options[i].field == field) {
   str = all_output_options[i].str;
   break;
  }
 }
 return str;
}
