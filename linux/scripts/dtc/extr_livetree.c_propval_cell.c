
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; scalar_t__ val; } ;
struct property {TYPE_1__ val; } ;
typedef int fdt32_t ;
typedef int cell_t ;


 int assert (int) ;
 int fdt32_to_cpu (int ) ;

cell_t propval_cell(struct property *prop)
{
 assert(prop->val.len == sizeof(cell_t));
 return fdt32_to_cpu(*((fdt32_t *)prop->val.val));
}
