
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct cpcap_audio {int regmap; } ;


 scalar_t__ BIT (int ) ;
 int CPCAP_BIT_DIG_AUD_IN ;
 int CPCAP_BIT_DIG_AUD_IN_ST_DAC ;
 int CPCAP_REG_CDI ;
 int CPCAP_REG_SDACDI ;
 int regmap_update_bits (int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int cpcap_dai_mux(struct cpcap_audio *cpcap, bool swap_dai_configuration)
{
 u16 hifi_val, voice_val;
 u16 hifi_mask = BIT(CPCAP_BIT_DIG_AUD_IN_ST_DAC);
 u16 voice_mask = BIT(CPCAP_BIT_DIG_AUD_IN);
 int err;



 if (!swap_dai_configuration) {

  voice_val = 0;
  hifi_val = hifi_mask;
 } else {

  voice_val = voice_mask;
  hifi_val = 0;
 }

 err = regmap_update_bits(cpcap->regmap, CPCAP_REG_CDI,
     voice_mask, voice_val);
 if (err)
  return err;

 err = regmap_update_bits(cpcap->regmap, CPCAP_REG_SDACDI,
     hifi_mask, hifi_val);
 if (err)
  return err;

 return 0;
}
