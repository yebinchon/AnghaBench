
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;
struct snd_pcm_substream {int dummy; } ;
struct adau {scalar_t__ sigmadsp; } ;


 int sigmadsp_restrict_params (scalar_t__,struct snd_pcm_substream*) ;
 struct adau* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int adau17x1_startup(struct snd_pcm_substream *substream,
 struct snd_soc_dai *dai)
{
 struct adau *adau = snd_soc_component_get_drvdata(dai->component);

 if (adau->sigmadsp)
  return sigmadsp_restrict_params(adau->sigmadsp, substream);

 return 0;
}
