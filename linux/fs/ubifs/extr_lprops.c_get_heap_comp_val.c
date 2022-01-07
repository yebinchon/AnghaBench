
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lprops {int free; int dirty; } ;





__attribute__((used)) static int get_heap_comp_val(struct ubifs_lprops *lprops, int cat)
{
 switch (cat) {
 case 128:
  return lprops->free;
 case 129:
  return lprops->free + lprops->dirty;
 default:
  return lprops->dirty;
 }
}
