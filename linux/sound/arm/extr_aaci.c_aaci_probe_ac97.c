
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ac97_template {int scaps; scalar_t__ num; struct aaci* private_data; } ;
struct snd_ac97_bus {int clock; int * pcms; } ;
struct snd_ac97 {int dummy; } ;
struct TYPE_4__ {int * pcm; } ;
struct TYPE_3__ {int * pcm; } ;
struct aaci {TYPE_2__ capture; TYPE_1__ playback; struct snd_ac97* ac97; struct snd_ac97_bus* ac97_bus; int card; scalar_t__ base; } ;


 scalar_t__ AACI_RESET ;
 int AC97_PC_BEEP ;
 int AC97_SCAP_SKIP_MODEM ;
 int ARRAY_SIZE (int ) ;
 int FRAME_PERIOD_US ;
 int RESET_NRST ;
 int aaci_bus_ops ;
 int ac97_defs ;
 scalar_t__ ac97_is_audio (struct snd_ac97*) ;
 int memset (struct snd_ac97_template*,int ,int) ;
 int snd_ac97_bus (int ,int ,int *,struct aaci*,struct snd_ac97_bus**) ;
 int snd_ac97_mixer (struct snd_ac97_bus*,struct snd_ac97_template*,struct snd_ac97**) ;
 int snd_ac97_pcm_assign (struct snd_ac97_bus*,int ,int ) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int aaci_probe_ac97(struct aaci *aaci)
{
 struct snd_ac97_template ac97_template;
 struct snd_ac97_bus *ac97_bus;
 struct snd_ac97 *ac97;
 int ret;




 writel(0, aaci->base + AACI_RESET);
 udelay(2);
 writel(RESET_NRST, aaci->base + AACI_RESET);





 udelay(FRAME_PERIOD_US * 2);

 ret = snd_ac97_bus(aaci->card, 0, &aaci_bus_ops, aaci, &ac97_bus);
 if (ret)
  goto out;

 ac97_bus->clock = 48000;
 aaci->ac97_bus = ac97_bus;

 memset(&ac97_template, 0, sizeof(struct snd_ac97_template));
 ac97_template.private_data = aaci;
 ac97_template.num = 0;
 ac97_template.scaps = AC97_SCAP_SKIP_MODEM;

 ret = snd_ac97_mixer(ac97_bus, &ac97_template, &ac97);
 if (ret)
  goto out;
 aaci->ac97 = ac97;




 if (ac97_is_audio(ac97))
  snd_ac97_write_cache(ac97, AC97_PC_BEEP, 0x801e);

 ret = snd_ac97_pcm_assign(ac97_bus, ARRAY_SIZE(ac97_defs), ac97_defs);
 if (ret)
  goto out;

 aaci->playback.pcm = &ac97_bus->pcms[0];
 aaci->capture.pcm = &ac97_bus->pcms[1];

 out:
 return ret;
}
