
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int stop; } ;
struct TYPE_6__ {TYPE_2__ regs; } ;
struct snd_ali {TYPE_3__ chregs; TYPE_1__* card; } ;
struct TYPE_4__ {int dev; } ;


 int ALI_REG (struct snd_ali*,int ) ;
 int dev_dbg (int ,char*,unsigned int) ;
 int outl (unsigned int,int ) ;

__attribute__((used)) static void snd_ali_stop_voice(struct snd_ali *codec, unsigned int channel)
{
 unsigned int mask = 1 << (channel & 0x1f);

 dev_dbg(codec->card->dev, "stop_voice: channel=%d\n", channel);
 outl(mask, ALI_REG(codec, codec->chregs.regs.stop));
}
