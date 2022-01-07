
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct nilfs_dir_entry {int inode; int rec_len; } ;
struct inode {int i_ctime; int i_mtime; int i_ino; } ;
struct address_space {int dummy; } ;


 int BUG_ON (int) ;
 int cpu_to_le64 (int ) ;
 int current_time (struct inode*) ;
 int lock_page (struct page*) ;
 int nilfs_commit_chunk (struct page*,struct address_space*,unsigned int,unsigned int) ;
 int nilfs_prepare_chunk (struct page*,unsigned int,unsigned int) ;
 int nilfs_put_page (struct page*) ;
 unsigned int nilfs_rec_len_from_disk (int ) ;
 int nilfs_set_de_type (struct nilfs_dir_entry*,struct inode*) ;
 scalar_t__ page_address (struct page*) ;

void nilfs_set_link(struct inode *dir, struct nilfs_dir_entry *de,
      struct page *page, struct inode *inode)
{
 unsigned int from = (char *)de - (char *)page_address(page);
 unsigned int to = from + nilfs_rec_len_from_disk(de->rec_len);
 struct address_space *mapping = page->mapping;
 int err;

 lock_page(page);
 err = nilfs_prepare_chunk(page, from, to);
 BUG_ON(err);
 de->inode = cpu_to_le64(inode->i_ino);
 nilfs_set_de_type(de, inode);
 nilfs_commit_chunk(page, mapping, from, to);
 nilfs_put_page(page);
 dir->i_mtime = dir->i_ctime = current_time(dir);
}
