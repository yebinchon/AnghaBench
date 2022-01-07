
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sfire_chip {struct control_runtime* control; TYPE_1__* dev; int card; struct comm_runtime* comm; } ;
struct control_runtime {int set_channels; int set_rate; int (* update_streaming ) (struct control_runtime*) ;struct sfire_chip* chip; } ;
struct comm_runtime {int (* write8 ) (struct comm_runtime*,scalar_t__,int ,int ) ;} ;
struct TYPE_7__ {int value; int reg; scalar_t__ type; } ;
struct TYPE_6__ {scalar_t__ name; } ;
struct TYPE_5__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 TYPE_2__* elements ;
 TYPE_3__* init_data ;
 int kfree (struct control_runtime*) ;
 struct control_runtime* kzalloc (int,int ) ;
 int mute_elements ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (TYPE_2__*,struct control_runtime*) ;
 int stub1 (struct comm_runtime*,scalar_t__,int ,int ) ;
 int usb6fire_control_add_virtual (struct control_runtime*,int ,char*,int ) ;
 int usb6fire_control_input_vol_update (struct control_runtime*) ;
 int usb6fire_control_line_phono_update (struct control_runtime*) ;
 int usb6fire_control_opt_coax_update (struct control_runtime*) ;
 int usb6fire_control_output_mute_update (struct control_runtime*) ;
 int usb6fire_control_output_vol_update (struct control_runtime*) ;
 int usb6fire_control_set_channels ;
 int usb6fire_control_set_rate ;
 int usb6fire_control_streaming_update (struct control_runtime*) ;
 int vol_elements ;

int usb6fire_control_init(struct sfire_chip *chip)
{
 int i;
 int ret;
 struct control_runtime *rt = kzalloc(sizeof(struct control_runtime),
   GFP_KERNEL);
 struct comm_runtime *comm_rt = chip->comm;

 if (!rt)
  return -ENOMEM;

 rt->chip = chip;
 rt->update_streaming = usb6fire_control_streaming_update;
 rt->set_rate = usb6fire_control_set_rate;
 rt->set_channels = usb6fire_control_set_channels;

 i = 0;
 while (init_data[i].type) {
  comm_rt->write8(comm_rt, init_data[i].type, init_data[i].reg,
    init_data[i].value);
  i++;
 }

 usb6fire_control_opt_coax_update(rt);
 usb6fire_control_line_phono_update(rt);
 usb6fire_control_output_vol_update(rt);
 usb6fire_control_output_mute_update(rt);
 usb6fire_control_input_vol_update(rt);
 usb6fire_control_streaming_update(rt);

 ret = usb6fire_control_add_virtual(rt, chip->card,
  "Master Playback Volume", vol_elements);
 if (ret) {
  dev_err(&chip->dev->dev, "cannot add control.\n");
  kfree(rt);
  return ret;
 }
 ret = usb6fire_control_add_virtual(rt, chip->card,
  "Master Playback Switch", mute_elements);
 if (ret) {
  dev_err(&chip->dev->dev, "cannot add control.\n");
  kfree(rt);
  return ret;
 }

 i = 0;
 while (elements[i].name) {
  ret = snd_ctl_add(chip->card, snd_ctl_new1(&elements[i], rt));
  if (ret < 0) {
   kfree(rt);
   dev_err(&chip->dev->dev, "cannot add control.\n");
   return ret;
  }
  i++;
 }

 chip->control = rt;
 return 0;
}
