
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_ff* private_data; } ;
struct snd_ff {int dummy; } ;


 int snd_ff_stream_lock_release (struct snd_ff*) ;

__attribute__((used)) static int pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_ff *ff = substream->private_data;

 snd_ff_stream_lock_release(ff);

 return 0;
}
