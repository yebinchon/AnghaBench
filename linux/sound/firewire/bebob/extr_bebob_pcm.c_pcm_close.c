
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_bebob* private_data; } ;
struct snd_bebob {int dummy; } ;


 int snd_bebob_stream_lock_release (struct snd_bebob*) ;

__attribute__((used)) static int
pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_bebob *bebob = substream->private_data;
 snd_bebob_stream_lock_release(bebob);
 return 0;
}
