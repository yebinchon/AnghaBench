
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_audio {int mutex; int dev; } ;


 int SND_US16X08_URB_METER_REQUEST ;
 int SND_US16X08_URB_METER_REQUESTTYPE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_usb_ctl_msg (int ,int ,int ,int ,int ,int ,unsigned char*,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int snd_us16x08_recv_urb(struct snd_usb_audio *chip,
 unsigned char *buf, int size)
{

 mutex_lock(&chip->mutex);
 snd_usb_ctl_msg(chip->dev,
  usb_rcvctrlpipe(chip->dev, 0),
  SND_US16X08_URB_METER_REQUEST,
  SND_US16X08_URB_METER_REQUESTTYPE, 0, 0, buf, size);
 mutex_unlock(&chip->mutex);
 return 0;
}
