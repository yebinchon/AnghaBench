
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_audio {int dev; } ;


 int usb_string (int ,int,char*,int) ;

__attribute__((used)) static int snd_usb_copy_string_desc(struct snd_usb_audio *chip,
        int index, char *buf, int maxlen)
{
 int len = usb_string(chip->dev, index, buf, maxlen - 1);

 if (len < 0)
  return 0;

 buf[len] = 0;
 return len;
}
