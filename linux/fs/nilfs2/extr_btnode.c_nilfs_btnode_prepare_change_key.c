
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ index; } ;
struct nilfs_btnode_chkey_ctxt {scalar_t__ oldkey; scalar_t__ newkey; struct buffer_head* newbh; struct buffer_head* bh; } ;
struct inode {scalar_t__ i_blkbits; } ;
struct buffer_head {struct page* b_page; } ;
struct address_space {int i_pages; } ;
typedef scalar_t__ __u64 ;


 int BUG_ON (int) ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_NOFS ;
 struct inode* NILFS_BTNC_I (struct address_space*) ;
 int NILFS_PAGE_BUG (struct page*,char*,unsigned long long,unsigned long long) ;
 scalar_t__ PAGE_SHIFT ;
 int __xa_insert (int *,scalar_t__,struct page*,int ) ;
 int invalidate_inode_pages2_range (struct address_space*,scalar_t__,scalar_t__) ;
 int lock_page (struct page*) ;
 struct buffer_head* nilfs_btnode_create_block (struct address_space*,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int xa_lock_irq (int *) ;
 int xa_unlock_irq (int *) ;

int nilfs_btnode_prepare_change_key(struct address_space *btnc,
        struct nilfs_btnode_chkey_ctxt *ctxt)
{
 struct buffer_head *obh, *nbh;
 struct inode *inode = NILFS_BTNC_I(btnc);
 __u64 oldkey = ctxt->oldkey, newkey = ctxt->newkey;
 int err;

 if (oldkey == newkey)
  return 0;

 obh = ctxt->bh;
 ctxt->newbh = ((void*)0);

 if (inode->i_blkbits == PAGE_SHIFT) {
  struct page *opage = obh->b_page;
  lock_page(opage);
retry:

  if (unlikely(oldkey != opage->index))
   NILFS_PAGE_BUG(opage,
           "invalid oldkey %lld (newkey=%lld)",
           (unsigned long long)oldkey,
           (unsigned long long)newkey);

  xa_lock_irq(&btnc->i_pages);
  err = __xa_insert(&btnc->i_pages, newkey, opage, GFP_NOFS);
  xa_unlock_irq(&btnc->i_pages);






  if (!err)
   return 0;
  else if (err != -EBUSY)
   goto failed_unlock;

  err = invalidate_inode_pages2_range(btnc, newkey, newkey);
  if (!err)
   goto retry;

  unlock_page(opage);
 }

 nbh = nilfs_btnode_create_block(btnc, newkey);
 if (!nbh)
  return -ENOMEM;

 BUG_ON(nbh == obh);
 ctxt->newbh = nbh;
 return 0;

 failed_unlock:
 unlock_page(obh->b_page);
 return err;
}
