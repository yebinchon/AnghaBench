
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_caiaqdev {int input_dev; } ;





 int snd_caiaq_input_read_analog (struct snd_usb_caiaqdev*,char*,unsigned int) ;
 int snd_caiaq_input_read_erp (struct snd_usb_caiaqdev*,char*,unsigned int) ;
 int snd_caiaq_input_read_io (struct snd_usb_caiaqdev*,char*,unsigned int) ;

void snd_usb_caiaq_input_dispatch(struct snd_usb_caiaqdev *cdev,
      char *buf,
      unsigned int len)
{
 if (!cdev->input_dev || len < 1)
  return;

 switch (buf[0]) {
 case 130:
  snd_caiaq_input_read_analog(cdev, buf + 1, len - 1);
  break;
 case 129:
  snd_caiaq_input_read_erp(cdev, buf + 1, len - 1);
  break;
 case 128:
  snd_caiaq_input_read_io(cdev, buf + 1, len - 1);
  break;
 }
}
