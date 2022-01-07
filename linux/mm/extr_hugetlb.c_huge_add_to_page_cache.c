
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_lock; int i_blocks; } ;
struct hstate {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int pgoff_t ;


 int ClearPagePrivate (struct page*) ;
 int GFP_KERNEL ;
 int add_to_page_cache (struct page*,struct address_space*,int ,int ) ;
 scalar_t__ blocks_per_huge_page (struct hstate*) ;
 struct hstate* hstate_inode (struct inode*) ;
 int set_page_dirty (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int huge_add_to_page_cache(struct page *page, struct address_space *mapping,
      pgoff_t idx)
{
 struct inode *inode = mapping->host;
 struct hstate *h = hstate_inode(inode);
 int err = add_to_page_cache(page, mapping, idx, GFP_KERNEL);

 if (err)
  return err;
 ClearPagePrivate(page);





 set_page_dirty(page);

 spin_lock(&inode->i_lock);
 inode->i_blocks += blocks_per_huge_page(h);
 spin_unlock(&inode->i_lock);
 return 0;
}
