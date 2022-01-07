
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_mixer_interface {int dummy; } ;


 int SCARLETT2_USB_CONFIG_SAVE ;
 int SCARLETT2_USB_DATA_CMD ;
 int cpu_to_le32 (int ) ;
 int scarlett2_usb (struct usb_mixer_interface*,int ,int *,int,int *,int ) ;

__attribute__((used)) static void scarlett2_config_save(struct usb_mixer_interface *mixer)
{
 u32 req = cpu_to_le32(SCARLETT2_USB_CONFIG_SAVE);

 scarlett2_usb(mixer, SCARLETT2_USB_DATA_CMD,
        &req, sizeof(u32),
        ((void*)0), 0);
}
