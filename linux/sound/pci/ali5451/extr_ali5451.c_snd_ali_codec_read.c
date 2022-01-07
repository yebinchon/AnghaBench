
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ali {TYPE_1__* card; } ;
struct snd_ac97 {int num; struct snd_ali* private_data; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int ,char*,unsigned short) ;
 unsigned short snd_ali_codec_peek (struct snd_ali*,int ,unsigned short) ;

__attribute__((used)) static unsigned short snd_ali_codec_read(struct snd_ac97 *ac97,
      unsigned short reg)
{
 struct snd_ali *codec = ac97->private_data;

 dev_dbg(codec->card->dev, "codec_read reg=%xh.\n", reg);
 return snd_ali_codec_peek(codec, ac97->num, reg);
}
