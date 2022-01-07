
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct file {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int snd_pcm_mmap_status(struct snd_pcm_substream *substream, struct file *file,
          struct vm_area_struct *area)
{
 return -ENXIO;
}
