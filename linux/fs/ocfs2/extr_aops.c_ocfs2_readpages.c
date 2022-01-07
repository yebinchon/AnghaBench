
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ index; } ;
struct ocfs2_inode_info {int ip_dyn_features; int ip_alloc_sem; } ;
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;


 int EIO ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 int OCFS2_LOCK_NONBLOCK ;
 int PAGE_SHIFT ;
 scalar_t__ down_read_trylock (int *) ;
 int i_size_read (struct inode*) ;
 struct page* lru_to_page (struct list_head*) ;
 int mpage_readpages (struct address_space*,struct list_head*,unsigned int,int ) ;
 int ocfs2_get_block ;
 int ocfs2_inode_lock_full (struct inode*,int *,int ,int ) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 int up_read (int *) ;

__attribute__((used)) static int ocfs2_readpages(struct file *filp, struct address_space *mapping,
      struct list_head *pages, unsigned nr_pages)
{
 int ret, err = -EIO;
 struct inode *inode = mapping->host;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 loff_t start;
 struct page *last;





 ret = ocfs2_inode_lock_full(inode, ((void*)0), 0, OCFS2_LOCK_NONBLOCK);
 if (ret)
  return err;

 if (down_read_trylock(&oi->ip_alloc_sem) == 0) {
  ocfs2_inode_unlock(inode, 0);
  return err;
 }





 if (oi->ip_dyn_features & OCFS2_INLINE_DATA_FL)
  goto out_unlock;





 last = lru_to_page(pages);
 start = (loff_t)last->index << PAGE_SHIFT;
 if (start >= i_size_read(inode))
  goto out_unlock;

 err = mpage_readpages(mapping, pages, nr_pages, ocfs2_get_block);

out_unlock:
 up_read(&oi->ip_alloc_sem);
 ocfs2_inode_unlock(inode, 0);

 return err;
}
