
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int R01_SFORO_I2S ;
 int R01_SFORO_LSB16 ;
 int R01_SFORO_MASK ;
 int R01_SFORO_MSB ;
 int R01_SIM ;
 unsigned int SND_SOC_DAIFMT_CBM_CFM ;
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int UDA1380_IFACE ;
 int uda1380_read_reg_cache (struct snd_soc_component*,int ) ;
 int uda1380_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int uda1380_set_dai_fmt_capture(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 int iface;


 iface = uda1380_read_reg_cache(component, UDA1380_IFACE);
 iface &= ~(R01_SIM | R01_SFORO_MASK);

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
  iface |= R01_SFORO_I2S;
  break;
 case 129:
  iface |= R01_SFORO_LSB16;
  break;
 case 128:
  iface |= R01_SFORO_MSB;
 }

 if ((fmt & SND_SOC_DAIFMT_MASTER_MASK) == SND_SOC_DAIFMT_CBM_CFM)
  iface |= R01_SIM;

 uda1380_write(component, UDA1380_IFACE, iface);

 return 0;
}
