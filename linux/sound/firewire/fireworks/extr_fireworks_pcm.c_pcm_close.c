
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_efw* private_data; } ;
struct snd_efw {int dummy; } ;


 int snd_efw_stream_lock_release (struct snd_efw*) ;

__attribute__((used)) static int pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_efw *efw = substream->private_data;
 snd_efw_stream_lock_release(efw);
 return 0;
}
