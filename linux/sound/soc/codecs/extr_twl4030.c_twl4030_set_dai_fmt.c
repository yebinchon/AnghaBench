
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_priv {scalar_t__ codec_powered; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;



 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int TWL4030_AIF_FORMAT ;
 int TWL4030_AIF_FORMAT_CODEC ;
 int TWL4030_AIF_FORMAT_TDM ;
 int TWL4030_AIF_SLAVE_EN ;
 int TWL4030_CLK256FS_EN ;
 int TWL4030_REG_AUDIO_IF ;
 struct twl4030_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int twl4030_codec_enable (struct snd_soc_component*,int) ;
 int twl4030_read (struct snd_soc_component*,int ) ;
 int twl4030_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int twl4030_set_dai_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 struct twl4030_priv *twl4030 = snd_soc_component_get_drvdata(component);
 u8 old_format, format;


 old_format = twl4030_read(component, TWL4030_REG_AUDIO_IF);
 format = old_format;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 131:
  format &= ~(TWL4030_AIF_SLAVE_EN);
  format &= ~(TWL4030_CLK256FS_EN);
  break;
 case 130:
  format |= TWL4030_AIF_SLAVE_EN;
  format |= TWL4030_CLK256FS_EN;
  break;
 default:
  return -EINVAL;
 }


 format &= ~TWL4030_AIF_FORMAT;
 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 128:
  format |= TWL4030_AIF_FORMAT_CODEC;
  break;
 case 129:
  format |= TWL4030_AIF_FORMAT_TDM;
  break;
 default:
  return -EINVAL;
 }

 if (format != old_format) {
  if (twl4030->codec_powered) {




   twl4030_codec_enable(component, 0);
   twl4030_write(component, TWL4030_REG_AUDIO_IF, format);
   twl4030_codec_enable(component, 1);
  } else {
   twl4030_write(component, TWL4030_REG_AUDIO_IF, format);
  }
 }

 return 0;
}
