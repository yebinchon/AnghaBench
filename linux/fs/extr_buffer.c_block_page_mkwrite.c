
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_fault {struct page* page; } ;
struct vm_area_struct {int vm_file; } ;
struct page {scalar_t__ mapping; int index; } ;
struct inode {scalar_t__ i_mapping; } ;
typedef int loff_t ;
typedef int get_block_t ;


 int EFAULT ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int __block_write_begin (struct page*,int ,unsigned long,int ) ;
 int block_commit_write (struct page*,int ,unsigned long) ;
 struct inode* file_inode (int ) ;
 int i_size_read (struct inode*) ;
 int lock_page (struct page*) ;
 int page_offset (struct page*) ;
 int set_page_dirty (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int wait_for_stable_page (struct page*) ;

int block_page_mkwrite(struct vm_area_struct *vma, struct vm_fault *vmf,
    get_block_t get_block)
{
 struct page *page = vmf->page;
 struct inode *inode = file_inode(vma->vm_file);
 unsigned long end;
 loff_t size;
 int ret;

 lock_page(page);
 size = i_size_read(inode);
 if ((page->mapping != inode->i_mapping) ||
     (page_offset(page) > size)) {

  ret = -EFAULT;
  goto out_unlock;
 }


 if (((page->index + 1) << PAGE_SHIFT) > size)
  end = size & ~PAGE_MASK;
 else
  end = PAGE_SIZE;

 ret = __block_write_begin(page, 0, end, get_block);
 if (!ret)
  ret = block_commit_write(page, 0, end);

 if (unlikely(ret < 0))
  goto out_unlock;
 set_page_dirty(page);
 wait_for_stable_page(page);
 return 0;
out_unlock:
 unlock_page(page);
 return ret;
}
