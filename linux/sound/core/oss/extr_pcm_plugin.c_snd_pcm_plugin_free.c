
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_plugin {int buf; struct snd_pcm_plugin* buf_channels; int (* private_free ) (struct snd_pcm_plugin*) ;} ;


 int kfree (struct snd_pcm_plugin*) ;
 int kvfree (int ) ;
 int stub1 (struct snd_pcm_plugin*) ;

int snd_pcm_plugin_free(struct snd_pcm_plugin *plugin)
{
 if (! plugin)
  return 0;
 if (plugin->private_free)
  plugin->private_free(plugin);
 kfree(plugin->buf_channels);
 kvfree(plugin->buf);
 kfree(plugin);
 return 0;
}
