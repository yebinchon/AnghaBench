
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auto_pin_cfg_item {scalar_t__ type; scalar_t__ has_boost_on_pin; } ;



__attribute__((used)) static int compare_input_type(const void *ap, const void *bp)
{
 const struct auto_pin_cfg_item *a = ap;
 const struct auto_pin_cfg_item *b = bp;
 if (a->type != b->type)
  return (int)(a->type - b->type);



 return (int)(b->has_boost_on_pin - a->has_boost_on_pin);
}
