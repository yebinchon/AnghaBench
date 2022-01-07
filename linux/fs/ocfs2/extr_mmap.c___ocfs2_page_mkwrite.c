
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct page {int index; struct address_space* mapping; } ;
struct inode {struct address_space* i_mapping; } ;
struct file {int dummy; } ;
struct buffer_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int loff_t ;


 int BUG_ON (int) ;
 int ENOSPC ;
 int OCFS2_WRITE_MMAP ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 int VM_FAULT_LOCKED ;
 int VM_FAULT_NOPAGE ;
 struct inode* file_inode (struct file*) ;
 int i_size_read (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_write_begin_nolock (struct address_space*,int,unsigned int,int ,struct page**,void**,struct buffer_head*,struct page*) ;
 int ocfs2_write_end_nolock (struct address_space*,int,unsigned int,unsigned int,void*) ;
 int page_offset (struct page*) ;
 int vmf_error (int) ;

__attribute__((used)) static vm_fault_t __ocfs2_page_mkwrite(struct file *file,
   struct buffer_head *di_bh, struct page *page)
{
 int err;
 vm_fault_t ret = VM_FAULT_NOPAGE;
 struct inode *inode = file_inode(file);
 struct address_space *mapping = inode->i_mapping;
 loff_t pos = page_offset(page);
 unsigned int len = PAGE_SIZE;
 pgoff_t last_index;
 struct page *locked_page = ((void*)0);
 void *fsdata;
 loff_t size = i_size_read(inode);

 last_index = (size - 1) >> PAGE_SHIFT;
 if ((page->mapping != inode->i_mapping) ||
     (!PageUptodate(page)) ||
     (page_offset(page) >= size))
  goto out;
 if (page->index == last_index)
  len = ((size - 1) & ~PAGE_MASK) + 1;

 err = ocfs2_write_begin_nolock(mapping, pos, len, OCFS2_WRITE_MMAP,
           &locked_page, &fsdata, di_bh, page);
 if (err) {
  if (err != -ENOSPC)
   mlog_errno(err);
  ret = vmf_error(err);
  goto out;
 }

 if (!locked_page) {
  ret = VM_FAULT_NOPAGE;
  goto out;
 }
 err = ocfs2_write_end_nolock(mapping, pos, len, len, fsdata);
 BUG_ON(err != len);
 ret = VM_FAULT_LOCKED;
out:
 return ret;
}
