
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mmio; TYPE_1__* card; } ;
typedef TYPE_2__ vortex_t ;
struct snd_ac97 {unsigned short num; scalar_t__ private_data; } ;
struct TYPE_3__ {int dev; } ;


 int POLL_COUNT ;
 unsigned short VORTEX_CODEC_ADDMASK ;
 unsigned short VORTEX_CODEC_ADDSHIFT ;
 int VORTEX_CODEC_CTRL ;
 unsigned short VORTEX_CODEC_DATMASK ;
 unsigned short VORTEX_CODEC_DATSHIFT ;
 unsigned short VORTEX_CODEC_ID_SHIFT ;
 int VORTEX_CODEC_IO ;
 unsigned short VORTEX_CODEC_WRITE ;
 int dev_err (int ,char*) ;
 int hwread (int ,int ) ;
 int hwwrite (int ,int ,unsigned short) ;
 int udelay (int) ;

__attribute__((used)) static void
vortex_codec_write(struct snd_ac97 * codec, unsigned short addr, unsigned short data)
{

 vortex_t *card = (vortex_t *) codec->private_data;
 unsigned int lifeboat = 0;


 while (!(hwread(card->mmio, VORTEX_CODEC_CTRL) & 0x100)) {
  udelay(100);
  if (lifeboat++ > POLL_COUNT) {
   dev_err(card->card->dev, "ac97 codec stuck busy\n");
   return;
  }
 }

 hwwrite(card->mmio, VORTEX_CODEC_IO,
  ((addr << VORTEX_CODEC_ADDSHIFT) & VORTEX_CODEC_ADDMASK) |
  ((data << VORTEX_CODEC_DATSHIFT) & VORTEX_CODEC_DATMASK) |
  VORTEX_CODEC_WRITE |
  (codec->num << VORTEX_CODEC_ID_SHIFT) );


 hwread(card->mmio, VORTEX_CODEC_IO);
}
