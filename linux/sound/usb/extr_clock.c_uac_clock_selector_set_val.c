
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_audio {int dev; } ;
typedef int pin ;


 int EINVAL ;
 int UAC2_CS_CUR ;
 int UAC2_CX_CLOCK_SELECTOR ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int snd_usb_ctl_msg (int ,int ,int ,int,int,int,unsigned char*,int) ;
 int snd_usb_ctrl_intf (struct snd_usb_audio*) ;
 int uac_clock_selector_get_val (struct snd_usb_audio*,int) ;
 int usb_audio_err (struct snd_usb_audio*,char*,int,unsigned char,...) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int uac_clock_selector_set_val(struct snd_usb_audio *chip, int selector_id,
     unsigned char pin)
{
 int ret;

 ret = snd_usb_ctl_msg(chip->dev, usb_sndctrlpipe(chip->dev, 0),
         UAC2_CS_CUR,
         USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_OUT,
         UAC2_CX_CLOCK_SELECTOR << 8,
         snd_usb_ctrl_intf(chip) | (selector_id << 8),
         &pin, sizeof(pin));
 if (ret < 0)
  return ret;

 if (ret != sizeof(pin)) {
  usb_audio_err(chip,
   "setting selector (id %d) unexpected length %d\n",
   selector_id, ret);
  return -EINVAL;
 }

 ret = uac_clock_selector_get_val(chip, selector_id);
 if (ret < 0)
  return ret;

 if (ret != pin) {
  usb_audio_err(chip,
   "setting selector (id %d) to %x failed (current: %d)\n",
   selector_id, pin, ret);
  return -EINVAL;
 }

 return ret;
}
