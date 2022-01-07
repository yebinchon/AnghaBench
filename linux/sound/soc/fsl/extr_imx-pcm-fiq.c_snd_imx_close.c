
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct imx_pcm_runtime_data* private_data; } ;
struct imx_pcm_runtime_data {int hrt; } ;


 int hrtimer_cancel (int *) ;
 int kfree (struct imx_pcm_runtime_data*) ;

__attribute__((used)) static int snd_imx_close(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct imx_pcm_runtime_data *iprtd = runtime->private_data;

 hrtimer_cancel(&iprtd->hrt);

 kfree(iprtd);

 return 0;
}
