
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi {int dev; int (* private_free ) (struct snd_rawmidi*) ;int * streams; TYPE_1__* ops; int * proc_entry; } ;
struct TYPE_2__ {int (* dev_unregister ) (struct snd_rawmidi*) ;} ;


 size_t SNDRV_RAWMIDI_STREAM_INPUT ;
 size_t SNDRV_RAWMIDI_STREAM_OUTPUT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int register_mutex ;
 int snd_info_free_entry (int *) ;
 int snd_rawmidi_free_substreams (int *) ;
 int stub1 (struct snd_rawmidi*) ;
 int stub2 (struct snd_rawmidi*) ;

__attribute__((used)) static int snd_rawmidi_free(struct snd_rawmidi *rmidi)
{
 if (!rmidi)
  return 0;

 snd_info_free_entry(rmidi->proc_entry);
 rmidi->proc_entry = ((void*)0);
 mutex_lock(&register_mutex);
 if (rmidi->ops && rmidi->ops->dev_unregister)
  rmidi->ops->dev_unregister(rmidi);
 mutex_unlock(&register_mutex);

 snd_rawmidi_free_substreams(&rmidi->streams[SNDRV_RAWMIDI_STREAM_INPUT]);
 snd_rawmidi_free_substreams(&rmidi->streams[SNDRV_RAWMIDI_STREAM_OUTPUT]);
 if (rmidi->private_free)
  rmidi->private_free(rmidi);
 put_device(&rmidi->dev);
 return 0;
}
