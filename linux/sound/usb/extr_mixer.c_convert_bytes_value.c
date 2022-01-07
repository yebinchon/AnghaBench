
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_elem_info {int val_type; } ;
__attribute__((used)) static int convert_bytes_value(struct usb_mixer_elem_info *cval, int val)
{
 switch (cval->val_type) {
 case 133:
  return !!val;
 case 132:
  return !val;
 case 130:
 case 128:
  return val & 0xff;
 case 131:
 case 129:
  return val & 0xffff;
 }
 return 0;
}
