
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; scalar_t__ vm_pgoff; int vm_mm; struct file* vm_file; } ;
struct file {int f_mapping; } ;
typedef int loff_t ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 long EBADF ;
 scalar_t__ IS_DAX (int ) ;
 int PAGE_SHIFT ;
 int POSIX_FADV_WILLNEED ;
 TYPE_2__* current ;
 int down_read (int *) ;
 int file_inode (struct file*) ;
 int force_shm_swapin_readahead (struct vm_area_struct*,unsigned long,unsigned long,int ) ;
 int fput (struct file*) ;
 int get_file (struct file*) ;
 int lru_add_drain () ;
 scalar_t__ shmem_mapping (int ) ;
 int swapin_walk_ops ;
 int up_read (int *) ;
 int vfs_fadvise (struct file*,int,unsigned long,int ) ;
 int walk_page_range (int ,unsigned long,unsigned long,int *,struct vm_area_struct*) ;

__attribute__((used)) static long madvise_willneed(struct vm_area_struct *vma,
        struct vm_area_struct **prev,
        unsigned long start, unsigned long end)
{
 struct file *file = vma->vm_file;
 loff_t offset;

 *prev = vma;
 if (!file)
  return -EBADF;


 if (IS_DAX(file_inode(file))) {

  return 0;
 }







 *prev = ((void*)0);
 get_file(file);
 up_read(&current->mm->mmap_sem);
 offset = (loff_t)(start - vma->vm_start)
   + ((loff_t)vma->vm_pgoff << PAGE_SHIFT);
 vfs_fadvise(file, offset, end - start, POSIX_FADV_WILLNEED);
 fput(file);
 down_read(&current->mm->mmap_sem);
 return 0;
}
