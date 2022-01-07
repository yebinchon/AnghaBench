
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct nm256_stream* private_data; } ;
struct nm256_stream {scalar_t__ bufptr; } ;


 int memset_io (scalar_t__,int ,unsigned long) ;

__attribute__((used)) static int
snd_nm256_playback_silence(struct snd_pcm_substream *substream,
      int channel, unsigned long pos, unsigned long count)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct nm256_stream *s = runtime->private_data;

 memset_io(s->bufptr + pos, 0, count);
 return 0;
}
