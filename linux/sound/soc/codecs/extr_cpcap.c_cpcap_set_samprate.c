
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_component {int dev; } ;
struct cpcap_audio {int regmap; struct snd_soc_component* component; } ;
typedef enum cpcap_dai { ____Placeholder_cpcap_dai } cpcap_dai ;


 int BIT (int ) ;
 int CLOCK_TREE_RESET_TIME ;
 int CPCAP_BIT_CDC_CLOCK_TREE_RESET ;
 int CPCAP_BIT_CDC_SR0 ;
 int CPCAP_BIT_DF_RESET ;
 int CPCAP_BIT_DF_RESET_ST_DAC ;
 int CPCAP_BIT_ST_CLOCK_TREE_RESET ;
 int CPCAP_BIT_ST_SR0 ;


 int CPCAP_REG_CC ;
 int CPCAP_REG_SDAC ;
 int EINVAL ;
 int EIO ;
 int dev_err (int ,char*,int) ;
 int mdelay (int ) ;
 int regmap_read (int ,int,int*) ;
 int regmap_update_bits (int ,int,int,int) ;

__attribute__((used)) static int cpcap_set_samprate(struct cpcap_audio *cpcap, enum cpcap_dai dai,
         int samplerate)
{
 struct snd_soc_component *component = cpcap->component;
 u16 sampreg, sampmask, sampshift, sampval, sampreset;
 int err, sampreadval;

 switch (dai) {
 case 129:
  sampreg = CPCAP_REG_SDAC;
  sampshift = CPCAP_BIT_ST_SR0;
  sampreset = BIT(CPCAP_BIT_DF_RESET_ST_DAC) |
       BIT(CPCAP_BIT_ST_CLOCK_TREE_RESET);
  break;
 case 128:
  sampreg = CPCAP_REG_CC;
  sampshift = CPCAP_BIT_CDC_SR0;
  sampreset = BIT(CPCAP_BIT_DF_RESET) |
       BIT(CPCAP_BIT_CDC_CLOCK_TREE_RESET);
  break;
 default:
  dev_err(component->dev, "invalid DAI: %d", dai);
  return -EINVAL;
 }

 sampmask = 0xF << sampshift | sampreset;
 switch (samplerate) {
 case 48000:
  sampval = 0x8 << sampshift;
  break;
 case 44100:
  sampval = 0x7 << sampshift;
  break;
 case 32000:
  sampval = 0x6 << sampshift;
  break;
 case 24000:
  sampval = 0x5 << sampshift;
  break;
 case 22050:
  sampval = 0x4 << sampshift;
  break;
 case 16000:
  sampval = 0x3 << sampshift;
  break;
 case 12000:
  sampval = 0x2 << sampshift;
  break;
 case 11025:
  sampval = 0x1 << sampshift;
  break;
 case 8000:
  sampval = 0x0 << sampshift;
  break;
 default:
  dev_err(component->dev, "unsupported samplerate %d", samplerate);
  return -EINVAL;
 }
 err = regmap_update_bits(cpcap->regmap, sampreg,
     sampmask, sampval | sampreset);
 if (err)
  return err;


 mdelay(CLOCK_TREE_RESET_TIME);

 err = regmap_read(cpcap->regmap, sampreg, &sampreadval);
 if (err)
  return err;

 if (sampreadval & sampreset) {
  dev_err(component->dev, "reset self-clear failed: %04x",
   sampreadval);
  return -EIO;
 }

 return 0;
}
