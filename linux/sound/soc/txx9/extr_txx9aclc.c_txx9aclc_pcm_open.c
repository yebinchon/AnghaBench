
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct txx9aclc_soc_device {struct txx9aclc_dmadata* dmadata; } ;
struct txx9aclc_dmadata {int dummy; } ;
struct snd_pcm_substream {size_t stream; TYPE_1__* runtime; } ;
struct TYPE_2__ {struct txx9aclc_dmadata* private_data; } ;


 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int snd_pcm_hw_constraint_integer (TYPE_1__*,int ) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;
 int txx9aclc_pcm_hardware ;
 struct txx9aclc_soc_device txx9aclc_soc_device ;

__attribute__((used)) static int txx9aclc_pcm_open(struct snd_pcm_substream *substream)
{
 struct txx9aclc_soc_device *dev = &txx9aclc_soc_device;
 struct txx9aclc_dmadata *dmadata = &dev->dmadata[substream->stream];
 int ret;

 ret = snd_soc_set_runtime_hwparams(substream, &txx9aclc_pcm_hardware);
 if (ret)
  return ret;

 ret = snd_pcm_hw_constraint_integer(substream->runtime,
         SNDRV_PCM_HW_PARAM_PERIODS);
 if (ret < 0)
  return ret;
 substream->runtime->private_data = dmadata;
 return 0;
}
