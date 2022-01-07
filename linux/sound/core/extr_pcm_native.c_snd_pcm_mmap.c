
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_pgoff; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_file {struct snd_pcm_substream* substream; } ;
struct file {struct snd_pcm_file* private_data; } ;


 int ENXIO ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PCM_RUNTIME_CHECK (struct snd_pcm_substream*) ;


 int pcm_control_mmap_allowed (struct snd_pcm_file*) ;
 int pcm_status_mmap_allowed (struct snd_pcm_file*) ;
 int snd_pcm_mmap_control (struct snd_pcm_substream*,struct file*,struct vm_area_struct*) ;
 int snd_pcm_mmap_data (struct snd_pcm_substream*,struct file*,struct vm_area_struct*) ;
 int snd_pcm_mmap_status (struct snd_pcm_substream*,struct file*,struct vm_area_struct*) ;

__attribute__((used)) static int snd_pcm_mmap(struct file *file, struct vm_area_struct *area)
{
 struct snd_pcm_file * pcm_file;
 struct snd_pcm_substream *substream;
 unsigned long offset;

 pcm_file = file->private_data;
 substream = pcm_file->substream;
 if (PCM_RUNTIME_CHECK(substream))
  return -ENXIO;

 offset = area->vm_pgoff << PAGE_SHIFT;
 switch (offset) {
 case 128:
  if (!pcm_status_mmap_allowed(pcm_file))
   return -ENXIO;
  return snd_pcm_mmap_status(substream, file, area);
 case 129:
  if (!pcm_control_mmap_allowed(pcm_file))
   return -ENXIO;
  return snd_pcm_mmap_control(substream, file, area);
 default:
  return snd_pcm_mmap_data(substream, file, area);
 }
 return 0;
}
