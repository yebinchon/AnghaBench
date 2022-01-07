
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; TYPE_1__* vm_ops; } ;
struct task_struct {int dummy; } ;
struct page {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
struct TYPE_2__ {int (* access ) (struct vm_area_struct*,unsigned long,void*,int,int) ;} ;


 unsigned int FOLL_WRITE ;
 int PAGE_SIZE ;
 int copy_from_user_page (struct vm_area_struct*,struct page*,unsigned long,void*,void*,int) ;
 int copy_to_user_page (struct vm_area_struct*,struct page*,unsigned long,void*,void*,int) ;
 scalar_t__ down_read_killable (int *) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int get_user_pages_remote (struct task_struct*,struct mm_struct*,unsigned long,int,unsigned int,struct page**,struct vm_area_struct**,int *) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int put_page (struct page*) ;
 int set_page_dirty_lock (struct page*) ;
 int stub1 (struct vm_area_struct*,unsigned long,void*,int,int) ;
 int up_read (int *) ;

int __access_remote_vm(struct task_struct *tsk, struct mm_struct *mm,
  unsigned long addr, void *buf, int len, unsigned int gup_flags)
{
 struct vm_area_struct *vma;
 void *old_buf = buf;
 int write = gup_flags & FOLL_WRITE;

 if (down_read_killable(&mm->mmap_sem))
  return 0;


 while (len) {
  int bytes, ret, offset;
  void *maddr;
  struct page *page = ((void*)0);

  ret = get_user_pages_remote(tsk, mm, addr, 1,
    gup_flags, &page, &vma, ((void*)0));
  if (ret <= 0) {

   break;
  } else {
   bytes = len;
   offset = addr & (PAGE_SIZE-1);
   if (bytes > PAGE_SIZE-offset)
    bytes = PAGE_SIZE-offset;

   maddr = kmap(page);
   if (write) {
    copy_to_user_page(vma, page, addr,
        maddr + offset, buf, bytes);
    set_page_dirty_lock(page);
   } else {
    copy_from_user_page(vma, page, addr,
          buf, maddr + offset, bytes);
   }
   kunmap(page);
   put_page(page);
  }
  len -= bytes;
  buf += bytes;
  addr += bytes;
 }
 up_read(&mm->mmap_sem);

 return buf - old_buf;
}
