
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; struct cs4281_dma* private_data; } ;
struct cs4281_dma {int left_slot; int right_slot; struct snd_pcm_substream* substream; } ;
struct cs4281 {struct cs4281_dma* dma; } ;


 int snd_cs4281_capture ;
 int snd_pcm_hw_constraint_msbits (struct snd_pcm_runtime*,int ,int,int) ;
 struct cs4281* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cs4281_capture_open(struct snd_pcm_substream *substream)
{
 struct cs4281 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct cs4281_dma *dma;

 dma = &chip->dma[1];
 dma->substream = substream;
 dma->left_slot = 10;
 dma->right_slot = 11;
 runtime->private_data = dma;
 runtime->hw = snd_cs4281_capture;



 snd_pcm_hw_constraint_msbits(runtime, 0, 32, 20);
 return 0;
}
