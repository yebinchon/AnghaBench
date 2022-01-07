
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_region; int vm_file; } ;
struct TYPE_2__ {int vm_end; int vm_top; } ;


 int ENODEV ;
 int ENOSYS ;
 int call_mmap (int ,struct vm_area_struct*) ;

__attribute__((used)) static int do_mmap_shared_file(struct vm_area_struct *vma)
{
 int ret;

 ret = call_mmap(vma->vm_file, vma);
 if (ret == 0) {
  vma->vm_region->vm_top = vma->vm_region->vm_end;
  return 0;
 }
 if (ret != -ENOSYS)
  return ret;




 return -ENODEV;
}
