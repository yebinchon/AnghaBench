
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int ac97read; } ;
struct TYPE_4__ {TYPE_3__ regs; } ;
struct snd_ali {TYPE_1__ chregs; TYPE_2__* card; } ;
struct TYPE_5__ {int dev; } ;


 int dev_err (int ,char*,unsigned short) ;
 int snd_ali_5451_peek (struct snd_ali*,unsigned int) ;
 int snd_ali_5451_poke (struct snd_ali*,unsigned int,unsigned int) ;
 scalar_t__ snd_ali_codec_ready (struct snd_ali*,unsigned int) ;
 scalar_t__ snd_ali_stimer_ready (struct snd_ali*) ;

__attribute__((used)) static unsigned short snd_ali_codec_peek(struct snd_ali *codec,
      int secondary,
      unsigned short reg)
{
 unsigned int dwVal;
 unsigned int port;

 if (reg >= 0x80) {
  dev_err(codec->card->dev,
   "ali_codec_peek: reg(%xh) invalid.\n", reg);
  return ~0;
 }

 port = codec->chregs.regs.ac97read;

 if (snd_ali_codec_ready(codec, port) < 0)
  return ~0;
 if (snd_ali_stimer_ready(codec) < 0)
  return ~0;

 dwVal = (unsigned int) (reg & 0xff);
 dwVal |= 0x8000;
 if (secondary)
  dwVal |= 0x0080;

 snd_ali_5451_poke(codec, port, dwVal);

 if (snd_ali_stimer_ready(codec) < 0)
  return ~0;
 if (snd_ali_codec_ready(codec, port) < 0)
  return ~0;

 return (snd_ali_5451_peek(codec, port) & 0xffff0000) >> 16;
}
