
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct isight* private_data; } ;
struct isight {int mutex; scalar_t__ period_counter; scalar_t__ buffer_pointer; } ;


 int isight_start_streaming (struct isight*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int isight_prepare(struct snd_pcm_substream *substream)
{
 struct isight *isight = substream->private_data;
 int err;

 isight->buffer_pointer = 0;
 isight->period_counter = 0;

 mutex_lock(&isight->mutex);
 err = isight_start_streaming(isight);
 mutex_unlock(&isight->mutex);

 return err;
}
