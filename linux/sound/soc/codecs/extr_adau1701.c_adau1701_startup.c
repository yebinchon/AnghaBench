
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;
struct snd_pcm_substream {int dummy; } ;
struct adau1701 {int sigmadsp; } ;


 int sigmadsp_restrict_params (int ,struct snd_pcm_substream*) ;
 struct adau1701* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int adau1701_startup(struct snd_pcm_substream *substream,
 struct snd_soc_dai *dai)
{
 struct adau1701 *adau1701 = snd_soc_component_get_drvdata(dai->component);

 return sigmadsp_restrict_params(adau1701->sigmadsp, substream);
}
