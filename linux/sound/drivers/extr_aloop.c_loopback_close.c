
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; struct loopback* private_data; } ;
struct loopback_pcm {int dummy; } ;
struct loopback {int cable_lock; } ;
struct TYPE_2__ {struct loopback_pcm* private_data; } ;


 int free_cable (struct snd_pcm_substream*) ;
 int loopback_timer_stop_sync (struct loopback_pcm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int loopback_close(struct snd_pcm_substream *substream)
{
 struct loopback *loopback = substream->private_data;
 struct loopback_pcm *dpcm = substream->runtime->private_data;

 loopback_timer_stop_sync(dpcm);
 mutex_lock(&loopback->cable_lock);
 free_cable(substream);
 mutex_unlock(&loopback->cable_lock);
 return 0;
}
