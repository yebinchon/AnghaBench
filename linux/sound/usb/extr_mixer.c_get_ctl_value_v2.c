
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int id; TYPE_1__* mixer; } ;
struct usb_mixer_elem_info {int val_type; TYPE_2__ head; } ;
struct snd_usb_audio {int dev; } ;
typedef int buf ;
typedef int __u8 ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_3__ {struct snd_usb_audio* chip; } ;


 int EINVAL ;
 int EIO ;
 int UAC2_CS_CUR ;
 int UAC2_CS_RANGE ;




 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int convert_signed_value (struct usb_mixer_elem_info*,int ) ;
 int memset (unsigned char*,int ,int) ;
 int snd_usb_combine_bytes (unsigned char*,int) ;
 int snd_usb_ctl_msg (int ,int ,int ,int,int,int,unsigned char*,int) ;
 int snd_usb_ctrl_intf (struct snd_usb_audio*) ;
 scalar_t__ snd_usb_lock_shutdown (struct snd_usb_audio*) ;
 int snd_usb_unlock_shutdown (struct snd_usb_audio*) ;
 int uac2_ctl_value_size (int ) ;
 int usb_audio_err (struct snd_usb_audio*,char*,int,int,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int get_ctl_value_v2(struct usb_mixer_elem_info *cval, int request,
       int validx, int *value_ret)
{
 struct snd_usb_audio *chip = cval->head.mixer->chip;

 unsigned char buf[sizeof(__u16) + 3 * sizeof(__u32)];
 unsigned char *val;
 int idx = 0, ret, val_size, size;
 __u8 bRequest;

 val_size = uac2_ctl_value_size(cval->val_type);

 if (request == 131) {
  bRequest = UAC2_CS_CUR;
  size = val_size;
 } else {
  bRequest = UAC2_CS_RANGE;
  size = sizeof(__u16) + 3 * val_size;
 }

 memset(buf, 0, sizeof(buf));

 ret = snd_usb_lock_shutdown(chip) ? -EIO : 0;
 if (ret)
  goto error;

 idx = snd_usb_ctrl_intf(chip) | (cval->head.id << 8);
 ret = snd_usb_ctl_msg(chip->dev, usb_rcvctrlpipe(chip->dev, 0), bRequest,
         USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_IN,
         validx, idx, buf, size);
 snd_usb_unlock_shutdown(chip);

 if (ret < 0) {
error:
  usb_audio_err(chip,
   "cannot get ctl value: req = %#x, wValue = %#x, wIndex = %#x, type = %d\n",
   request, validx, idx, cval->val_type);
  return ret;
 }



 switch (request) {
 case 131:
  val = buf;
  break;
 case 129:
  val = buf + sizeof(__u16);
  break;
 case 130:
  val = buf + sizeof(__u16) + val_size;
  break;
 case 128:
  val = buf + sizeof(__u16) + val_size * 2;
  break;
 default:
  return -EINVAL;
 }

 *value_ret = convert_signed_value(cval,
       snd_usb_combine_bytes(val, val_size));

 return 0;
}
