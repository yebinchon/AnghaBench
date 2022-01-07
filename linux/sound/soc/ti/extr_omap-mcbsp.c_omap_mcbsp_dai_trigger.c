
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct omap_mcbsp {int active; } ;


 int EINVAL ;






 int omap_mcbsp_start (struct omap_mcbsp*,int ) ;
 int omap_mcbsp_stop (struct omap_mcbsp*,int ) ;
 struct omap_mcbsp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int omap_mcbsp_dai_trigger(struct snd_pcm_substream *substream, int cmd,
      struct snd_soc_dai *cpu_dai)
{
 struct omap_mcbsp *mcbsp = snd_soc_dai_get_drvdata(cpu_dai);

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  mcbsp->active++;
  omap_mcbsp_start(mcbsp, substream->stream);
  break;

 case 129:
 case 128:
 case 133:
  omap_mcbsp_stop(mcbsp, substream->stream);
  mcbsp->active--;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
