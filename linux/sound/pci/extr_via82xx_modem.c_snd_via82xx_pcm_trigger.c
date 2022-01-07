
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct viadev {int running; } ;
struct via82xx_modem {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct viadev* private_data; } ;


 int EINVAL ;
 int OFFSET_CONTROL ;





 int VIADEV_REG (struct viadev*,int ) ;
 unsigned char VIA_REG_CTRL_PAUSE ;
 unsigned char VIA_REG_CTRL_START ;
 unsigned char VIA_REG_CTRL_TERMINATE ;
 int outb (unsigned char,int ) ;
 struct via82xx_modem* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_via82xx_channel_reset (struct via82xx_modem*,struct viadev*) ;

__attribute__((used)) static int snd_via82xx_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct via82xx_modem *chip = snd_pcm_substream_chip(substream);
 struct viadev *viadev = substream->runtime->private_data;
 unsigned char val = 0;

 switch (cmd) {
 case 130:
 case 128:
  val |= VIA_REG_CTRL_START;
  viadev->running = 1;
  break;
 case 129:
  val = VIA_REG_CTRL_TERMINATE;
  viadev->running = 0;
  break;
 case 132:
  val |= VIA_REG_CTRL_PAUSE;
  viadev->running = 0;
  break;
 case 131:
  viadev->running = 1;
  break;
 default:
  return -EINVAL;
 }
 outb(val, VIADEV_REG(viadev, OFFSET_CONTROL));
 if (cmd == 129)
  snd_via82xx_channel_reset(chip, viadev);
 return 0;
}
