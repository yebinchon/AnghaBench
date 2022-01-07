
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dev; } ;


 int SND_SOC_DPCM_UPDATE_BE ;
 int SND_SOC_DPCM_UPDATE_NO ;
 int dev_err (int ,char*) ;
 int dpcm_run_update_shutdown (struct snd_soc_pcm_runtime*,int) ;
 int dpcm_set_fe_update_state (struct snd_soc_pcm_runtime*,int,int ) ;

__attribute__((used)) static int dpcm_run_old_update(struct snd_soc_pcm_runtime *fe, int stream)
{
 int ret;

 dpcm_set_fe_update_state(fe, stream, SND_SOC_DPCM_UPDATE_BE);
 ret = dpcm_run_update_shutdown(fe, stream);
 if (ret < 0)
  dev_err(fe->dev, "ASoC: failed to shutdown some BEs\n");
 dpcm_set_fe_update_state(fe, stream, SND_SOC_DPCM_UPDATE_NO);

 return ret;
}
