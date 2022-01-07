
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int periods; int period_size; } ;
struct snd_intelhad {int num_bds; int period_bytes; scalar_t__ bd_head; scalar_t__ pcmbuf_filled; scalar_t__ pcmbuf_head; } ;


 int HAD_NUM_OF_RING_BUFS ;
 int WARN_ON (int) ;
 int frames_to_bytes (struct snd_pcm_runtime*,int ) ;
 int had_invalidate_bd (struct snd_intelhad*,int) ;
 int had_prog_bd (struct snd_pcm_substream*,struct snd_intelhad*) ;
 int max (int,unsigned int) ;
 int min (int,int) ;

__attribute__((used)) static void had_init_ringbuf(struct snd_pcm_substream *substream,
        struct snd_intelhad *intelhaddata)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 int i, num_periods;

 num_periods = runtime->periods;
 intelhaddata->num_bds = min(num_periods, HAD_NUM_OF_RING_BUFS);

 intelhaddata->num_bds = max(intelhaddata->num_bds, 2U);
 intelhaddata->period_bytes =
  frames_to_bytes(runtime, runtime->period_size);
 WARN_ON(intelhaddata->period_bytes & 0x3f);

 intelhaddata->bd_head = 0;
 intelhaddata->pcmbuf_head = 0;
 intelhaddata->pcmbuf_filled = 0;

 for (i = 0; i < HAD_NUM_OF_RING_BUFS; i++) {
  if (i < intelhaddata->num_bds)
   had_prog_bd(substream, intelhaddata);
  else
   had_invalidate_bd(intelhaddata, i);
 }

 intelhaddata->bd_head = 0;
}
