
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_intelhad {int connected; } ;


 scalar_t__ had_process_ringbuf (struct snd_pcm_substream*,struct snd_intelhad*) ;
 struct snd_pcm_substream* had_substream_get (struct snd_intelhad*) ;
 int had_substream_put (struct snd_intelhad*) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 int snd_pcm_stop_xrun (struct snd_pcm_substream*) ;

__attribute__((used)) static void had_process_buffer_done(struct snd_intelhad *intelhaddata)
{
 struct snd_pcm_substream *substream;

 substream = had_substream_get(intelhaddata);
 if (!substream)
  return;

 if (!intelhaddata->connected) {
  snd_pcm_stop_xrun(substream);
  goto out;
 }


 if (had_process_ringbuf(substream, intelhaddata) < 0)
  snd_pcm_stop_xrun(substream);
 else
  snd_pcm_period_elapsed(substream);

 out:
 had_substream_put(intelhaddata);
}
