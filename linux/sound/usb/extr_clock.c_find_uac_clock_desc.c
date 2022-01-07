
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_host_interface {int extralen; int extra; } ;


 void* snd_usb_find_csint_desc (int ,int ,void*,int ) ;

__attribute__((used)) static void *find_uac_clock_desc(struct usb_host_interface *iface, int id,
     bool (*validator)(void *, int), u8 type)
{
 void *cs = ((void*)0);

 while ((cs = snd_usb_find_csint_desc(iface->extra, iface->extralen,
          cs, type))) {
  if (validator(cs, id))
   return cs;
 }

 return ((void*)0);
}
