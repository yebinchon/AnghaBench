
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_motu* private_data; } ;
struct snd_motu {int dummy; } ;


 int snd_motu_stream_lock_release (struct snd_motu*) ;

__attribute__((used)) static int pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_motu *motu = substream->private_data;

 snd_motu_stream_lock_release(motu);

 return 0;
}
