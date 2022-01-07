
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; struct file* vm_file; } ;
struct mm_struct {int mmap_sem; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int GFP_NOWAIT ;
 scalar_t__ IS_ERR (char*) ;
 int PAGE_SIZE ;
 scalar_t__ __get_free_page (int ) ;
 TYPE_1__* current ;
 int down_read_trylock (int *) ;
 char* file_path (struct file*,char*,int ) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int free_page (unsigned long) ;
 int kbasename (char*) ;
 int printk (char*,char*,int ,scalar_t__,scalar_t__) ;
 int up_read (int *) ;

void print_vma_addr(char *prefix, unsigned long ip)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma;




 if (!down_read_trylock(&mm->mmap_sem))
  return;

 vma = find_vma(mm, ip);
 if (vma && vma->vm_file) {
  struct file *f = vma->vm_file;
  char *buf = (char *)__get_free_page(GFP_NOWAIT);
  if (buf) {
   char *p;

   p = file_path(f, buf, PAGE_SIZE);
   if (IS_ERR(p))
    p = "?";
   printk("%s%s[%lx+%lx]", prefix, kbasename(p),
     vma->vm_start,
     vma->vm_end - vma->vm_start);
   free_page((unsigned long)buf);
  }
 }
 up_read(&mm->mmap_sem);
}
