
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int element; } ;


 scalar_t__ debug_opt ;
 int dump_element (int ,int ) ;
 TYPE_1__* type_list ;

__attribute__((used)) static void dump_elements(void)
{
 if (debug_opt)
  dump_element(type_list[0].element, 0);
}
