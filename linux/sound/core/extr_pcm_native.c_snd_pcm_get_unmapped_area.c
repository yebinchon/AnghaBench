
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_area; scalar_t__ control; scalar_t__ status; } ;
struct snd_pcm_file {struct snd_pcm_substream* substream; } ;
struct file {struct snd_pcm_file* private_data; } ;


 unsigned long PAGE_SHIFT ;



__attribute__((used)) static unsigned long snd_pcm_get_unmapped_area(struct file *file,
            unsigned long addr,
            unsigned long len,
            unsigned long pgoff,
            unsigned long flags)
{
 struct snd_pcm_file *pcm_file = file->private_data;
 struct snd_pcm_substream *substream = pcm_file->substream;
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned long offset = pgoff << PAGE_SHIFT;

 switch (offset) {
 case 128:
  return (unsigned long)runtime->status;
 case 129:
  return (unsigned long)runtime->control;
 default:
  return (unsigned long)runtime->dma_area + offset;
 }
}
