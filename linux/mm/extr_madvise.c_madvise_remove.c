
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; unsigned long vm_start; scalar_t__ vm_pgoff; struct file* vm_file; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_6__ {TYPE_2__* mm; } ;
struct TYPE_5__ {int mmap_sem; } ;
struct TYPE_4__ {int host; } ;


 long EACCES ;
 long EINVAL ;
 int FALLOC_FL_KEEP_SIZE ;
 int FALLOC_FL_PUNCH_HOLE ;
 int PAGE_SHIFT ;
 int VM_LOCKED ;
 int VM_SHARED ;
 int VM_WRITE ;
 TYPE_3__* current ;
 int down_read (int *) ;
 int fput (struct file*) ;
 int get_file (struct file*) ;
 int up_read (int *) ;
 scalar_t__ userfaultfd_remove (struct vm_area_struct*,unsigned long,unsigned long) ;
 int vfs_fallocate (struct file*,int,int,unsigned long) ;

__attribute__((used)) static long madvise_remove(struct vm_area_struct *vma,
    struct vm_area_struct **prev,
    unsigned long start, unsigned long end)
{
 loff_t offset;
 int error;
 struct file *f;

 *prev = ((void*)0);

 if (vma->vm_flags & VM_LOCKED)
  return -EINVAL;

 f = vma->vm_file;

 if (!f || !f->f_mapping || !f->f_mapping->host) {
   return -EINVAL;
 }

 if ((vma->vm_flags & (VM_SHARED|VM_WRITE)) != (VM_SHARED|VM_WRITE))
  return -EACCES;

 offset = (loff_t)(start - vma->vm_start)
   + ((loff_t)vma->vm_pgoff << PAGE_SHIFT);







 get_file(f);
 if (userfaultfd_remove(vma, start, end)) {

  up_read(&current->mm->mmap_sem);
 }
 error = vfs_fallocate(f,
    FALLOC_FL_PUNCH_HOLE | FALLOC_FL_KEEP_SIZE,
    offset, end - start);
 fput(f);
 down_read(&current->mm->mmap_sem);
 return error;
}
