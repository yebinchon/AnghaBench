
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct isight* private_data; } ;
struct isight {int mutex; int pcm_active; } ;


 int WRITE_ONCE (int ,int) ;
 int isight_stop_streaming (struct isight*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_pcm_lib_free_vmalloc_buffer (struct snd_pcm_substream*) ;

__attribute__((used)) static int isight_hw_free(struct snd_pcm_substream *substream)
{
 struct isight *isight = substream->private_data;

 WRITE_ONCE(isight->pcm_active, 0);

 mutex_lock(&isight->mutex);
 isight_stop_streaming(isight);
 mutex_unlock(&isight->mutex);

 return snd_pcm_lib_free_vmalloc_buffer(substream);
}
