
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;
struct dmaengine_pcm_runtime_data {int pos; } ;
typedef int snd_pcm_uframes_t ;


 int bytes_to_frames (int ,int ) ;
 struct dmaengine_pcm_runtime_data* substream_to_prtd (struct snd_pcm_substream*) ;

snd_pcm_uframes_t snd_dmaengine_pcm_pointer_no_residue(struct snd_pcm_substream *substream)
{
 struct dmaengine_pcm_runtime_data *prtd = substream_to_prtd(substream);
 return bytes_to_frames(substream->runtime, prtd->pos);
}
