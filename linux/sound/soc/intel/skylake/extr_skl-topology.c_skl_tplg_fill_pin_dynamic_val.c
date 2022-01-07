
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skl_module_pin {int is_dynamic; } ;



__attribute__((used)) static void skl_tplg_fill_pin_dynamic_val(
  struct skl_module_pin *mpin, u32 pin_count, u32 value)
{
 int i;

 for (i = 0; i < pin_count; i++)
  mpin[i].is_dynamic = value;
}
