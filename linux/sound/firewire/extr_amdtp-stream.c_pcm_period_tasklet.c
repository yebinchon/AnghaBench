
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct amdtp_stream {int pcm; } ;


 struct snd_pcm_substream* READ_ONCE (int ) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;

__attribute__((used)) static void pcm_period_tasklet(unsigned long data)
{
 struct amdtp_stream *s = (void *)data;
 struct snd_pcm_substream *pcm = READ_ONCE(s->pcm);

 if (pcm)
  snd_pcm_period_elapsed(pcm);
}
