
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct inode {unsigned int i_size; } ;
struct address_space {struct inode* host; } ;
typedef unsigned int loff_t ;


 scalar_t__ IS_DIRSYNC (struct inode*) ;
 int block_write_end (int *,struct address_space*,unsigned int,unsigned int,unsigned int,struct page*,int *) ;
 int i_size_write (struct inode*,unsigned int) ;
 int inode_inc_iversion (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int unlock_page (struct page*) ;
 int write_one_page (struct page*) ;

__attribute__((used)) static int ufs_commit_chunk(struct page *page, loff_t pos, unsigned len)
{
 struct address_space *mapping = page->mapping;
 struct inode *dir = mapping->host;
 int err = 0;

 inode_inc_iversion(dir);
 block_write_end(((void*)0), mapping, pos, len, len, page, ((void*)0));
 if (pos+len > dir->i_size) {
  i_size_write(dir, pos+len);
  mark_inode_dirty(dir);
 }
 if (IS_DIRSYNC(dir))
  err = write_one_page(page);
 else
  unlock_page(page);
 return err;
}
