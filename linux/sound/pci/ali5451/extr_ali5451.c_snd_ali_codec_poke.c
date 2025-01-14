
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int ac97write; } ;
struct TYPE_6__ {TYPE_2__ regs; } ;
struct snd_ali {scalar_t__ revision; TYPE_3__ chregs; TYPE_1__* card; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ ALI_5451_V02 ;
 int dev_err (int ,char*,unsigned short) ;
 int snd_ali_5451_poke (struct snd_ali*,unsigned int,unsigned int) ;
 scalar_t__ snd_ali_codec_ready (struct snd_ali*,unsigned int) ;
 scalar_t__ snd_ali_stimer_ready (struct snd_ali*) ;

__attribute__((used)) static void snd_ali_codec_poke(struct snd_ali *codec,int secondary,
          unsigned short reg,
          unsigned short val)
{
 unsigned int dwVal;
 unsigned int port;

 if (reg >= 0x80) {
  dev_err(codec->card->dev,
   "ali_codec_poke: reg(%xh) invalid.\n", reg);
  return;
 }

 port = codec->chregs.regs.ac97write;

 if (snd_ali_codec_ready(codec, port) < 0)
  return;
 if (snd_ali_stimer_ready(codec) < 0)
  return;

 dwVal = (unsigned int) (reg & 0xff);
 dwVal |= 0x8000 | (val << 16);
 if (secondary)
  dwVal |= 0x0080;
 if (codec->revision == ALI_5451_V02)
  dwVal |= 0x0100;

 snd_ali_5451_poke(codec, port, dwVal);

 return ;
}
