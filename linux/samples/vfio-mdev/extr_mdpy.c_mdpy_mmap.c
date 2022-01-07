
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_pgoff; scalar_t__ vm_end; scalar_t__ vm_start; int vm_flags; } ;
struct mdev_state {scalar_t__ memsize; int memblk; } ;
struct mdev_device {int dummy; } ;


 int EINVAL ;
 scalar_t__ MDPY_MEMORY_BAR_OFFSET ;
 int PAGE_SHIFT ;
 int VM_SHARED ;
 struct mdev_state* mdev_get_drvdata (struct mdev_device*) ;
 int remap_vmalloc_range_partial (struct vm_area_struct*,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int mdpy_mmap(struct mdev_device *mdev, struct vm_area_struct *vma)
{
 struct mdev_state *mdev_state = mdev_get_drvdata(mdev);

 if (vma->vm_pgoff != MDPY_MEMORY_BAR_OFFSET >> PAGE_SHIFT)
  return -EINVAL;
 if (vma->vm_end < vma->vm_start)
  return -EINVAL;
 if (vma->vm_end - vma->vm_start > mdev_state->memsize)
  return -EINVAL;
 if ((vma->vm_flags & VM_SHARED) == 0)
  return -EINVAL;

 return remap_vmalloc_range_partial(vma, vma->vm_start,
        mdev_state->memblk,
        vma->vm_end - vma->vm_start);
}
