
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_end; int vm_start; int vm_flags; int * vm_ops; struct file* vm_file; } ;
struct file {int dummy; } ;
typedef int loff_t ;


 int CONFIG_TRANSPARENT_HUGE_PAGECACHE ;
 int HPAGE_PMD_MASK ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct file*) ;
 int PTR_ERR (struct file*) ;
 int fput (struct file*) ;
 int khugepaged_enter (struct vm_area_struct*,int ) ;
 struct file* shmem_kernel_file_setup (char*,int,int ) ;
 int shmem_vm_ops ;

int shmem_zero_setup(struct vm_area_struct *vma)
{
 struct file *file;
 loff_t size = vma->vm_end - vma->vm_start;







 file = shmem_kernel_file_setup("dev/zero", size, vma->vm_flags);
 if (IS_ERR(file))
  return PTR_ERR(file);

 if (vma->vm_file)
  fput(vma->vm_file);
 vma->vm_file = file;
 vma->vm_ops = &shmem_vm_ops;

 if (IS_ENABLED(CONFIG_TRANSPARENT_HUGE_PAGECACHE) &&
   ((vma->vm_start + ~HPAGE_PMD_MASK) & HPAGE_PMD_MASK) <
   (vma->vm_end & HPAGE_PMD_MASK)) {
  khugepaged_enter(vma, vma->vm_flags);
 }

 return 0;
}
