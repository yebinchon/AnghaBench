
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_mixer_interface {struct scarlett2_mixer_data* private_data; } ;
struct scarlett2_usb_volume_status {int * buttons; scalar_t__ master_vol; } ;
struct scarlett2_ports {int* num; } ;
struct scarlett2_mixer_data {int* buttons; TYPE_1__* info; int master_vol; int * vol; scalar_t__* vol_sw_hw_switch; scalar_t__ vol_updated; } ;
struct TYPE_2__ {int button_count; struct scarlett2_ports* ports; } ;


 size_t SCARLETT2_PORT_OUT ;
 size_t SCARLETT2_PORT_TYPE_ANALOGUE ;
 scalar_t__ SCARLETT2_VOLUME_BIAS ;
 int clamp (scalar_t__,int ,scalar_t__) ;
 int scarlett2_usb_get_volume_status (struct usb_mixer_interface*,struct scarlett2_usb_volume_status*) ;

__attribute__((used)) static int scarlett2_update_volumes(struct usb_mixer_interface *mixer)
{
 struct scarlett2_mixer_data *private = mixer->private_data;
 const struct scarlett2_ports *ports = private->info->ports;
 struct scarlett2_usb_volume_status volume_status;
 int num_line_out =
  ports[SCARLETT2_PORT_TYPE_ANALOGUE].num[SCARLETT2_PORT_OUT];
 int err, i;

 private->vol_updated = 0;

 err = scarlett2_usb_get_volume_status(mixer, &volume_status);
 if (err < 0)
  return err;

 private->master_vol = clamp(
  volume_status.master_vol + SCARLETT2_VOLUME_BIAS,
  0, SCARLETT2_VOLUME_BIAS);

 for (i = 0; i < num_line_out; i++) {
  if (private->vol_sw_hw_switch[i])
   private->vol[i] = private->master_vol;
 }

 for (i = 0; i < private->info->button_count; i++)
  private->buttons[i] = !!volume_status.buttons[i];

 return 0;
}
