
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dev; } ;
struct cpcap_audio {int regmap; } ;
struct TYPE_3__ {int val; int mask; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int CPCAP_DAI_HIFI ;
 int CPCAP_DAI_VOICE ;
 int cpcap_dai_mux (struct cpcap_audio*,int) ;
 TYPE_1__* cpcap_default_regs ;
 int cpcap_set_samprate (struct cpcap_audio*,int ,int) ;
 int cpcap_set_sysclk (struct cpcap_audio*,int ,int ,int) ;
 int dev_dbg (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct cpcap_audio* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cpcap_audio_reset(struct snd_soc_component *component,
        bool swap_dai_configuration)
{
 struct cpcap_audio *cpcap = snd_soc_component_get_drvdata(component);
 int i, err = 0;

 dev_dbg(component->dev, "init audio codec");

 for (i = 0; i < ARRAY_SIZE(cpcap_default_regs); i++) {
  err = regmap_update_bits(cpcap->regmap,
      cpcap_default_regs[i].reg,
      cpcap_default_regs[i].mask,
      cpcap_default_regs[i].val);
  if (err)
   return err;
 }


 err = cpcap_dai_mux(cpcap, swap_dai_configuration);
 if (err)
  return err;

 err = cpcap_set_sysclk(cpcap, CPCAP_DAI_HIFI, 0, 26000000);
 if (err)
  return err;
 err = cpcap_set_sysclk(cpcap, CPCAP_DAI_VOICE, 0, 26000000);
 if (err)
  return err;

 err = cpcap_set_samprate(cpcap, CPCAP_DAI_HIFI, 48000);
 if (err)
  return err;

 err = cpcap_set_samprate(cpcap, CPCAP_DAI_VOICE, 48000);
 if (err)
  return err;

 return 0;
}
