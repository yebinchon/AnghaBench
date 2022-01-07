
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ user_set; } ;


 int OUTPUT_TYPE_MAX ;
 TYPE_1__* output ;

__attribute__((used)) static bool output_set_by_user(void)
{
 int j;
 for (j = 0; j < OUTPUT_TYPE_MAX; ++j) {
  if (output[j].user_set)
   return 1;
 }
 return 0;
}
