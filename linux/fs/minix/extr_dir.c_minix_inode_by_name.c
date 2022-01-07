
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {struct address_space* mapping; } ;
struct minix_sb_info {scalar_t__ s_version; } ;
struct minix_dir_entry {int inode; } ;
struct inode {int i_sb; } ;
struct dentry {int dummy; } ;
struct address_space {struct inode* host; } ;
struct TYPE_2__ {int inode; } ;
typedef TYPE_1__ minix3_dirent ;
typedef int ino_t ;


 scalar_t__ MINIX_V3 ;
 int dir_put_page (struct page*) ;
 struct minix_dir_entry* minix_find_entry (struct dentry*,struct page**) ;
 struct minix_sb_info* minix_sb (int ) ;

ino_t minix_inode_by_name(struct dentry *dentry)
{
 struct page *page;
 struct minix_dir_entry *de = minix_find_entry(dentry, &page);
 ino_t res = 0;

 if (de) {
  struct address_space *mapping = page->mapping;
  struct inode *inode = mapping->host;
  struct minix_sb_info *sbi = minix_sb(inode->i_sb);

  if (sbi->s_version == MINIX_V3)
   res = ((minix3_dirent *) de)->inode;
  else
   res = de->inode;
  dir_put_page(page);
 }
 return res;
}
