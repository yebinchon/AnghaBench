
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbmix_name_map {int dummy; } ;
struct usb_mixer_interface {int dummy; } ;


 int __build_feature_ctl (struct usb_mixer_interface*,struct usbmix_name_map const*,unsigned int,int,int *,int *,int,int ,int ) ;

__attribute__((used)) static void build_feature_ctl_badd(struct usb_mixer_interface *mixer,
         unsigned int ctl_mask, int control, int unitid,
         const struct usbmix_name_map *badd_map)
{
 __build_feature_ctl(mixer, badd_map, ctl_mask, control,
   ((void*)0), ((void*)0), unitid, 0, 0);
}
