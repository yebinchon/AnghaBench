
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;


 int SCARLETT2_NUM_METERS ;
 int scarlett2_add_new_ctl (struct usb_mixer_interface*,int *,int ,int ,char*,int *) ;
 int scarlett2_meter_ctl ;

__attribute__((used)) static int scarlett2_add_meter_ctl(struct usb_mixer_interface *mixer)
{
 return scarlett2_add_new_ctl(mixer, &scarlett2_meter_ctl,
         0, SCARLETT2_NUM_METERS,
         "Level Meter", ((void*)0));
}
