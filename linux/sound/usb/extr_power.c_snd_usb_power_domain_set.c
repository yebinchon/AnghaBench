
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;
struct snd_usb_power_domain {int pd_id; int pd_d2d0_rec; int pd_d1d0_rec; } ;
struct snd_usb_audio {struct usb_device* dev; } ;
typedef int state ;
typedef int current_state ;


 int EINVAL ;
 int UAC2_CS_CUR ;
 int UAC3_AC_POWER_DOMAIN_CONTROL ;
 unsigned char UAC3_PD_STATE_D0 ;


 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int dev_dbg (int *,char*,int,unsigned char) ;
 int dev_err (int *,char*,unsigned char,...) ;
 int snd_usb_ctl_msg (struct usb_device*,int ,int ,int,int,int,unsigned char*,int) ;
 int snd_usb_ctrl_intf (struct snd_usb_audio*) ;
 int udelay (int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

int snd_usb_power_domain_set(struct snd_usb_audio *chip,
        struct snd_usb_power_domain *pd,
        unsigned char state)
{
 struct usb_device *dev = chip->dev;
 unsigned char current_state;
 int err, idx;

 idx = snd_usb_ctrl_intf(chip) | (pd->pd_id << 8);

 err = snd_usb_ctl_msg(chip->dev, usb_rcvctrlpipe(chip->dev, 0),
         UAC2_CS_CUR,
         USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_IN,
         UAC3_AC_POWER_DOMAIN_CONTROL << 8, idx,
         &current_state, sizeof(current_state));
 if (err < 0) {
  dev_err(&dev->dev, "Can't get UAC3 power state for id %d\n",
   pd->pd_id);
  return err;
 }

 if (current_state == state) {
  dev_dbg(&dev->dev, "UAC3 power domain id %d already in state %d\n",
   pd->pd_id, state);
  return 0;
 }

 err = snd_usb_ctl_msg(chip->dev, usb_sndctrlpipe(chip->dev, 0), UAC2_CS_CUR,
         USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_OUT,
         UAC3_AC_POWER_DOMAIN_CONTROL << 8, idx,
         &state, sizeof(state));
 if (err < 0) {
  dev_err(&dev->dev, "Can't set UAC3 power state to %d for id %d\n",
   state, pd->pd_id);
  return err;
 }

 if (state == UAC3_PD_STATE_D0) {
  switch (current_state) {
  case 128:
   udelay(pd->pd_d2d0_rec * 50);
   break;
  case 129:
   udelay(pd->pd_d1d0_rec * 50);
   break;
  default:
   return -EINVAL;
  }
 }

 dev_dbg(&dev->dev, "UAC3 power domain id %d change to state %d\n",
  pd->pd_id, state);

 return 0;
}
