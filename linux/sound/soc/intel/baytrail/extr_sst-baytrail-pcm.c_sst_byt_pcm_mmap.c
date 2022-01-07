
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct snd_soc_pcm_runtime {int dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;


 int dev_dbg (int ,char*) ;
 int snd_pcm_lib_default_mmap (struct snd_pcm_substream*,struct vm_area_struct*) ;

__attribute__((used)) static int sst_byt_pcm_mmap(struct snd_pcm_substream *substream,
       struct vm_area_struct *vma)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;

 dev_dbg(rtd->dev, "PCM: mmap\n");
 return snd_pcm_lib_default_mmap(substream, vma);
}
