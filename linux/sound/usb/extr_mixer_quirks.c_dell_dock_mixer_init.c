
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int chip; } ;


 int dell_dock_init_vol (int ,int,int) ;

__attribute__((used)) static int dell_dock_mixer_init(struct usb_mixer_interface *mixer)
{

 dell_dock_init_vol(mixer->chip, 1, 16);
 dell_dock_init_vol(mixer->chip, 2, 16);
 dell_dock_init_vol(mixer->chip, 1, 19);
 dell_dock_init_vol(mixer->chip, 2, 19);
 return 0;
}
