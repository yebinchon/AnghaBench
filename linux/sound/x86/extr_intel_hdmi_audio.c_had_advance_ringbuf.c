
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_intelhad {int pcmbuf_head; } ;
struct TYPE_2__ {int periods; } ;


 int had_prog_bd (struct snd_pcm_substream*,struct snd_intelhad*) ;

__attribute__((used)) static void had_advance_ringbuf(struct snd_pcm_substream *substream,
    struct snd_intelhad *intelhaddata)
{
 int num_periods = substream->runtime->periods;


 had_prog_bd(substream, intelhaddata);


 intelhaddata->pcmbuf_head++;
 intelhaddata->pcmbuf_head %= num_periods;
}
