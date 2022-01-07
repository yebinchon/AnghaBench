
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_intelhad {int need_reset; } ;


 struct snd_pcm_substream* had_substream_get (struct snd_intelhad*) ;
 int had_substream_put (struct snd_intelhad*) ;
 int snd_pcm_stop_xrun (struct snd_pcm_substream*) ;

__attribute__((used)) static void had_process_buffer_underrun(struct snd_intelhad *intelhaddata)
{
 struct snd_pcm_substream *substream;


 substream = had_substream_get(intelhaddata);
 if (substream) {
  snd_pcm_stop_xrun(substream);
  had_substream_put(intelhaddata);
 }
 intelhaddata->need_reset = 1;
}
