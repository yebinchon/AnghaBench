
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct fsl_ssi {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct fsl_ssi* snd_soc_dai_get_drvdata (int ) ;

__attribute__((used)) static void fsl_ssi_shutdown(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct fsl_ssi *ssi = snd_soc_dai_get_drvdata(rtd->cpu_dai);

 clk_disable_unprepare(ssi->clk);
}
