
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_audio {int dev; } ;


 int SND_US16X08_URB_REQUEST ;
 int SND_US16X08_URB_REQUESTTYPE ;
 int snd_usb_ctl_msg (int ,int ,int ,int ,int ,int ,char*,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int snd_us16x08_send_urb(struct snd_usb_audio *chip, char *buf, int size)
{
 return snd_usb_ctl_msg(chip->dev, usb_sndctrlpipe(chip->dev, 0),
   SND_US16X08_URB_REQUEST, SND_US16X08_URB_REQUESTTYPE,
   0, 0, buf, size);
}
