
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {int dummy; } ;


 int ALI_GLOBAL_CONTROL ;
 int ALI_REG (struct snd_ali*,int ) ;
 int ALI_SPDIF_OUT_CHANNEL ;
 unsigned short ALI_SPDIF_OUT_SEL_PCM ;
 unsigned short inw (int ) ;
 int outw (unsigned short,int ) ;
 int snd_ali_enable_special_channel (struct snd_ali*,int ) ;

__attribute__((used)) static void snd_ali_disable_spdif_chnout(struct snd_ali *codec)
{
 unsigned short wVal;

   wVal = inw(ALI_REG(codec, ALI_GLOBAL_CONTROL));
    wVal |= ALI_SPDIF_OUT_SEL_PCM;
    outw(wVal, ALI_REG(codec, ALI_GLOBAL_CONTROL));

 snd_ali_enable_special_channel(codec, ALI_SPDIF_OUT_CHANNEL);
}
