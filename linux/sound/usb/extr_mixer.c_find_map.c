
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbmix_name_map {int id; int control; } ;



__attribute__((used)) static const struct usbmix_name_map *
find_map(const struct usbmix_name_map *p, int unitid, int control)
{
 if (!p)
  return ((void*)0);

 for (; p->id; p++) {
  if (p->id == unitid &&
      (!control || !p->control || control == p->control))
   return p;
 }
 return ((void*)0);
}
