
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct fsl_ssi {scalar_t__ use_dual_fifo; int clk; } ;


 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 int clk_prepare_enable (int ) ;
 int snd_pcm_hw_constraint_step (int ,int ,int ,int) ;
 struct fsl_ssi* snd_soc_dai_get_drvdata (int ) ;

__attribute__((used)) static int fsl_ssi_startup(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct fsl_ssi *ssi = snd_soc_dai_get_drvdata(rtd->cpu_dai);
 int ret;

 ret = clk_prepare_enable(ssi->clk);
 if (ret)
  return ret;







 if (ssi->use_dual_fifo)
  snd_pcm_hw_constraint_step(substream->runtime, 0,
        SNDRV_PCM_HW_PARAM_PERIOD_SIZE, 2);

 return 0;
}
