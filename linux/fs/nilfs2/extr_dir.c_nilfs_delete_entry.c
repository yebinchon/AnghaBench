
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct nilfs_dir_entry {scalar_t__ rec_len; int inode; } ;
struct inode {int i_mtime; int i_ctime; int i_sb; } ;
struct address_space {struct inode* host; } ;


 int BUG_ON (int) ;
 int EIO ;
 int current_time (struct inode*) ;
 int lock_page (struct page*) ;
 int nilfs_chunk_size (struct inode*) ;
 int nilfs_commit_chunk (struct page*,struct address_space*,unsigned int,unsigned int) ;
 int nilfs_error (int ,char*) ;
 struct nilfs_dir_entry* nilfs_next_entry (struct nilfs_dir_entry*) ;
 int nilfs_prepare_chunk (struct page*,unsigned int,unsigned int) ;
 int nilfs_put_page (struct page*) ;
 int nilfs_rec_len_from_disk (scalar_t__) ;
 scalar_t__ nilfs_rec_len_to_disk (unsigned int) ;
 char* page_address (struct page*) ;

int nilfs_delete_entry(struct nilfs_dir_entry *dir, struct page *page)
{
 struct address_space *mapping = page->mapping;
 struct inode *inode = mapping->host;
 char *kaddr = page_address(page);
 unsigned int from, to;
 struct nilfs_dir_entry *de, *pde = ((void*)0);
 int err;

 from = ((char *)dir - kaddr) & ~(nilfs_chunk_size(inode) - 1);
 to = ((char *)dir - kaddr) + nilfs_rec_len_from_disk(dir->rec_len);
 de = (struct nilfs_dir_entry *)(kaddr + from);

 while ((char *)de < (char *)dir) {
  if (de->rec_len == 0) {
   nilfs_error(inode->i_sb,
        "zero-length directory entry");
   err = -EIO;
   goto out;
  }
  pde = de;
  de = nilfs_next_entry(de);
 }
 if (pde)
  from = (char *)pde - (char *)page_address(page);
 lock_page(page);
 err = nilfs_prepare_chunk(page, from, to);
 BUG_ON(err);
 if (pde)
  pde->rec_len = nilfs_rec_len_to_disk(to - from);
 dir->inode = 0;
 nilfs_commit_chunk(page, mapping, from, to);
 inode->i_ctime = inode->i_mtime = current_time(inode);
out:
 nilfs_put_page(page);
 return err;
}
