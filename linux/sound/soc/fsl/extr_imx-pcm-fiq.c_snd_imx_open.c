
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct imx_pcm_runtime_data* private_data; } ;
struct TYPE_2__ {int function; } ;
struct imx_pcm_runtime_data {TYPE_1__ hrt; int capturing; int playing; struct snd_pcm_substream* substream; } ;


 int CLOCK_MONOTONIC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HRTIMER_MODE_REL ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int atomic_set (int *,int ) ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int kfree (struct imx_pcm_runtime_data*) ;
 struct imx_pcm_runtime_data* kzalloc (int,int ) ;
 int snd_hrtimer_callback ;
 int snd_imx_hardware ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int snd_imx_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct imx_pcm_runtime_data *iprtd;
 int ret;

 iprtd = kzalloc(sizeof(*iprtd), GFP_KERNEL);
 if (iprtd == ((void*)0))
  return -ENOMEM;
 runtime->private_data = iprtd;

 iprtd->substream = substream;

 atomic_set(&iprtd->playing, 0);
 atomic_set(&iprtd->capturing, 0);
 hrtimer_init(&iprtd->hrt, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 iprtd->hrt.function = snd_hrtimer_callback;

 ret = snd_pcm_hw_constraint_integer(substream->runtime,
   SNDRV_PCM_HW_PARAM_PERIODS);
 if (ret < 0) {
  kfree(iprtd);
  return ret;
 }

 snd_soc_set_runtime_hwparams(substream, &snd_imx_hardware);
 return 0;
}
