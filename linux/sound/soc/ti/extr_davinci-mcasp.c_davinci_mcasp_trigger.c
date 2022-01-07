
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct davinci_mcasp {int dummy; } ;


 int EINVAL ;






 int davinci_mcasp_start (struct davinci_mcasp*,int ) ;
 int davinci_mcasp_stop (struct davinci_mcasp*,int ) ;
 struct davinci_mcasp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int davinci_mcasp_trigger(struct snd_pcm_substream *substream,
         int cmd, struct snd_soc_dai *cpu_dai)
{
 struct davinci_mcasp *mcasp = snd_soc_dai_get_drvdata(cpu_dai);
 int ret = 0;

 switch (cmd) {
 case 131:
 case 130:
 case 132:
  davinci_mcasp_start(mcasp, substream->stream);
  break;
 case 128:
 case 129:
 case 133:
  davinci_mcasp_stop(mcasp, substream->stream);
  break;

 default:
  ret = -EINVAL;
 }

 return ret;
}
