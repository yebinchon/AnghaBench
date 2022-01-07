
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_elem_info {int min; int res; int max; } ;



__attribute__((used)) static int get_abs_value(struct usb_mixer_elem_info *cval, int val)
{
 if (val < 0)
  return cval->min;
 if (!cval->res)
  cval->res = 1;
 val *= cval->res;
 val += cval->min;
 if (val > cval->max)
  return cval->max;
 return val;
}
