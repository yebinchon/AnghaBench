
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int stream; } ;


 int twl4030_voice_enable (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static void twl4030_voice_shutdown(struct snd_pcm_substream *substream,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;


 twl4030_voice_enable(component, substream->stream, 0);
}
