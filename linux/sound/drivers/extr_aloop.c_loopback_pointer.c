
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct loopback_pcm* private_data; } ;
struct loopback_pcm {TYPE_1__* cable; int buf_pos; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {int lock; } ;


 int bytes_to_frames (struct snd_pcm_runtime*,int ) ;
 int loopback_pos_update (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t loopback_pointer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct loopback_pcm *dpcm = runtime->private_data;
 snd_pcm_uframes_t pos;

 spin_lock(&dpcm->cable->lock);
 loopback_pos_update(dpcm->cable);
 pos = dpcm->buf_pos;
 spin_unlock(&dpcm->cable->lock);
 return bytes_to_frames(runtime, pos);
}
