
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_oxfw* private_data; } ;
struct snd_oxfw {int dummy; } ;


 int snd_oxfw_stream_lock_release (struct snd_oxfw*) ;

__attribute__((used)) static int pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_oxfw *oxfw = substream->private_data;

 snd_oxfw_stream_lock_release(oxfw);
 return 0;
}
