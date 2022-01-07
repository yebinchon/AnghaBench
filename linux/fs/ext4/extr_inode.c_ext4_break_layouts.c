
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _refcount; } ;
struct inode {int i_mapping; } ;
struct ext4_inode_info {int i_mmap_sem; } ;


 int EINVAL ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int ___wait_var_event (int *,int,int ,int ,int ,int ) ;
 int atomic_read (int *) ;
 struct page* dax_layout_busy_page (int ) ;
 int ext4_wait_dax_page (struct ext4_inode_info*) ;
 int rwsem_is_locked (int *) ;

int ext4_break_layouts(struct inode *inode)
{
 struct ext4_inode_info *ei = EXT4_I(inode);
 struct page *page;
 int error;

 if (WARN_ON_ONCE(!rwsem_is_locked(&ei->i_mmap_sem)))
  return -EINVAL;

 do {
  page = dax_layout_busy_page(inode->i_mapping);
  if (!page)
   return 0;

  error = ___wait_var_event(&page->_refcount,
    atomic_read(&page->_refcount) == 1,
    TASK_INTERRUPTIBLE, 0, 0,
    ext4_wait_dax_page(ei));
 } while (error == 0);

 return error;
}
