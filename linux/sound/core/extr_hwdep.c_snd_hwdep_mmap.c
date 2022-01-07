
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct TYPE_2__ {int (* mmap ) (struct snd_hwdep*,struct file*,struct vm_area_struct*) ;} ;
struct snd_hwdep {TYPE_1__ ops; } ;
struct file {struct snd_hwdep* private_data; } ;


 int ENXIO ;
 int stub1 (struct snd_hwdep*,struct file*,struct vm_area_struct*) ;

__attribute__((used)) static int snd_hwdep_mmap(struct file * file, struct vm_area_struct * vma)
{
 struct snd_hwdep *hw = file->private_data;
 if (hw->ops.mmap)
  return hw->ops.mmap(hw, file, vma);
 return -ENXIO;
}
