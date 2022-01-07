
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; struct usX2Ydev* vm_private_data; int * vm_ops; scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct usX2Ydev {int chip_status; int hwdep_pcm_shm; } ;
struct snd_usX2Y_hwdep_pcm_shm {int dummy; } ;
struct snd_hwdep {struct usX2Ydev* private_data; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 unsigned long PAGE_ALIGN (int) ;
 int USX2Y_STAT_CHIP_INIT ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int snd_printd (char*,unsigned long,unsigned long) ;
 int snd_usX2Y_hwdep_pcm_vm_ops ;

__attribute__((used)) static int snd_usX2Y_hwdep_pcm_mmap(struct snd_hwdep * hw, struct file *filp, struct vm_area_struct *area)
{
 unsigned long size = (unsigned long)(area->vm_end - area->vm_start);
 struct usX2Ydev *usX2Y = hw->private_data;

 if (!(usX2Y->chip_status & USX2Y_STAT_CHIP_INIT))
  return -EBUSY;


 if (size > PAGE_ALIGN(sizeof(struct snd_usX2Y_hwdep_pcm_shm))) {
  snd_printd("%lu > %lu\n", size, (unsigned long)sizeof(struct snd_usX2Y_hwdep_pcm_shm));
  return -EINVAL;
 }

 if (!usX2Y->hwdep_pcm_shm) {
  return -ENODEV;
 }
 area->vm_ops = &snd_usX2Y_hwdep_pcm_vm_ops;
 area->vm_flags |= VM_DONTEXPAND | VM_DONTDUMP;
 area->vm_private_data = hw->private_data;
 return 0;
}
