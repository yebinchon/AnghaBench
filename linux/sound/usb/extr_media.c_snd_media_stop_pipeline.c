
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_substream {struct media_ctl* media_ctl; } ;
struct media_ctl {TYPE_1__* media_dev; int media_entity; } ;
struct TYPE_2__ {int graph_mutex; int (* disable_source ) (int *) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int *) ;

void snd_media_stop_pipeline(struct snd_usb_substream *subs)
{
 struct media_ctl *mctl = subs->media_ctl;

 if (!mctl)
  return;

 mutex_lock(&mctl->media_dev->graph_mutex);
 if (mctl->media_dev->disable_source)
  mctl->media_dev->disable_source(&mctl->media_entity);
 mutex_unlock(&mctl->media_dev->graph_mutex);
}
