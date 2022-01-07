
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_5__* card; TYPE_2__* dai_link; int dev; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {TYPE_4__* driver; int name; int dev; } ;
struct snd_soc_component {int dummy; } ;
struct snd_compr_stream {int direction; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_10__ {int pcm_mutex; int pcm_subclass; } ;
struct TYPE_9__ {TYPE_3__* cops; } ;
struct TYPE_8__ {int (* startup ) (struct snd_compr_stream*,struct snd_soc_dai*) ;int (* shutdown ) (struct snd_compr_stream*,struct snd_soc_dai*) ;} ;
struct TYPE_7__ {int name; TYPE_1__* compr_ops; } ;
struct TYPE_6__ {int (* startup ) (struct snd_compr_stream*) ;} ;


 int dev_err (int ,char*,int ,int) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int snd_soc_runtime_activate (struct snd_soc_pcm_runtime*,int ) ;
 int soc_compr_components_free (struct snd_compr_stream*,struct snd_soc_component*) ;
 int soc_compr_components_open (struct snd_compr_stream*,struct snd_soc_component**) ;
 int stub1 (struct snd_compr_stream*,struct snd_soc_dai*) ;
 int stub2 (struct snd_compr_stream*) ;
 int stub3 (struct snd_compr_stream*,struct snd_soc_dai*) ;

__attribute__((used)) static int soc_compr_open(struct snd_compr_stream *cstream)
{
 struct snd_soc_pcm_runtime *rtd = cstream->private_data;
 struct snd_soc_component *component;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 int ret;

 mutex_lock_nested(&rtd->card->pcm_mutex, rtd->card->pcm_subclass);

 if (cpu_dai->driver->cops && cpu_dai->driver->cops->startup) {
  ret = cpu_dai->driver->cops->startup(cstream, cpu_dai);
  if (ret < 0) {
   dev_err(cpu_dai->dev,
    "Compress ASoC: can't open interface %s: %d\n",
    cpu_dai->name, ret);
   goto out;
  }
 }

 ret = soc_compr_components_open(cstream, &component);
 if (ret < 0)
  goto machine_err;

 if (rtd->dai_link->compr_ops && rtd->dai_link->compr_ops->startup) {
  ret = rtd->dai_link->compr_ops->startup(cstream);
  if (ret < 0) {
   dev_err(rtd->dev,
    "Compress ASoC: %s startup failed: %d\n",
    rtd->dai_link->name, ret);
   goto machine_err;
  }
 }

 snd_soc_runtime_activate(rtd, cstream->direction);

 mutex_unlock(&rtd->card->pcm_mutex);

 return 0;

machine_err:
 soc_compr_components_free(cstream, component);

 if (cpu_dai->driver->cops && cpu_dai->driver->cops->shutdown)
  cpu_dai->driver->cops->shutdown(cstream, cpu_dai);
out:
 mutex_unlock(&rtd->card->pcm_mutex);
 return ret;
}
