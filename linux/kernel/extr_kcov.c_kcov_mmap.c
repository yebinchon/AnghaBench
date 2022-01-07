
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; scalar_t__ vm_pgoff; int vm_flags; TYPE_1__* vm_file; } ;
struct page {int dummy; } ;
struct kcov {int size; scalar_t__ mode; int lock; void* area; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct kcov* private_data; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ KCOV_MODE_INIT ;
 scalar_t__ PAGE_SIZE ;
 int VM_DONTEXPAND ;
 int WARN_ONCE (int,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfree (void*) ;
 scalar_t__ vm_insert_page (struct vm_area_struct*,unsigned long,struct page*) ;
 struct page* vmalloc_to_page (void*) ;
 void* vmalloc_user (unsigned long) ;

__attribute__((used)) static int kcov_mmap(struct file *filep, struct vm_area_struct *vma)
{
 int res = 0;
 void *area;
 struct kcov *kcov = vma->vm_file->private_data;
 unsigned long size, off;
 struct page *page;

 area = vmalloc_user(vma->vm_end - vma->vm_start);
 if (!area)
  return -ENOMEM;

 spin_lock(&kcov->lock);
 size = kcov->size * sizeof(unsigned long);
 if (kcov->mode != KCOV_MODE_INIT || vma->vm_pgoff != 0 ||
     vma->vm_end - vma->vm_start != size) {
  res = -EINVAL;
  goto exit;
 }
 if (!kcov->area) {
  kcov->area = area;
  vma->vm_flags |= VM_DONTEXPAND;
  spin_unlock(&kcov->lock);
  for (off = 0; off < size; off += PAGE_SIZE) {
   page = vmalloc_to_page(kcov->area + off);
   if (vm_insert_page(vma, vma->vm_start + off, page))
    WARN_ONCE(1, "vm_insert_page() failed");
  }
  return 0;
 }
exit:
 spin_unlock(&kcov->lock);
 vfree(area);
 return res;
}
