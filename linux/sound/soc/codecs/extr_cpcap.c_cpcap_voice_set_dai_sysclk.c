
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct cpcap_audio {int dummy; } ;


 int CPCAP_DAI_VOICE ;
 int cpcap_set_sysclk (struct cpcap_audio*,int ,int,unsigned int) ;
 int dev_dbg (int ,char*,int,unsigned int) ;
 struct cpcap_audio* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cpcap_voice_set_dai_sysclk(struct snd_soc_dai *codec_dai, int clk_id,
          unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct cpcap_audio *cpcap = snd_soc_component_get_drvdata(component);

 dev_dbg(component->dev, "Voice setup sysclk: clk_id=%u, freq=%u",
  clk_id, freq);
 return cpcap_set_sysclk(cpcap, CPCAP_DAI_VOICE, clk_id, freq);
}
