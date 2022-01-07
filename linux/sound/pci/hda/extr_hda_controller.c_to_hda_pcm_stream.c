
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {size_t stream; } ;
struct hda_pcm_stream {int dummy; } ;
struct azx_pcm {TYPE_1__* info; } ;
struct TYPE_2__ {struct hda_pcm_stream* stream; } ;


 struct azx_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static inline struct hda_pcm_stream *
to_hda_pcm_stream(struct snd_pcm_substream *substream)
{
 struct azx_pcm *apcm = snd_pcm_substream_chip(substream);
 return &apcm->info->stream[substream->stream];
}
