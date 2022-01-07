
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_elem_info {int res; int min; int max; } ;



__attribute__((used)) static int get_relative_value(struct usb_mixer_elem_info *cval, int val)
{
 if (!cval->res)
  cval->res = 1;
 if (val < cval->min)
  return 0;
 else if (val >= cval->max)
  return (cval->max - cval->min + cval->res - 1) / cval->res;
 else
  return (val - cval->min) / cval->res;
}
