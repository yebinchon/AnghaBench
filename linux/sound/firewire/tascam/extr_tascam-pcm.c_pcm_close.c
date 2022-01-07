
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {int dummy; } ;
struct snd_pcm_substream {struct snd_tscm* private_data; } ;


 int snd_tscm_stream_lock_release (struct snd_tscm*) ;

__attribute__((used)) static int pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_tscm *tscm = substream->private_data;

 snd_tscm_stream_lock_release(tscm);

 return 0;
}
