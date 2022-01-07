
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysv_dir_entry {int inode; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_ctime; int i_mtime; int i_ino; int i_sb; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int BUG_ON (int) ;
 int SYSV_DIRSIZE ;
 int SYSV_SB (int ) ;
 int cpu_to_fs16 (int ,int ) ;
 int current_time (struct inode*) ;
 int dir_commit_chunk (struct page*,int,int ) ;
 int dir_put_page (struct page*) ;
 int lock_page (struct page*) ;
 int mark_inode_dirty (struct inode*) ;
 scalar_t__ page_address (struct page*) ;
 int page_offset (struct page*) ;
 int sysv_prepare_chunk (struct page*,int,int ) ;

void sysv_set_link(struct sysv_dir_entry *de, struct page *page,
 struct inode *inode)
{
 struct inode *dir = page->mapping->host;
 loff_t pos = page_offset(page) +
   (char *)de-(char*)page_address(page);
 int err;

 lock_page(page);
 err = sysv_prepare_chunk(page, pos, SYSV_DIRSIZE);
 BUG_ON(err);
 de->inode = cpu_to_fs16(SYSV_SB(inode->i_sb), inode->i_ino);
 err = dir_commit_chunk(page, pos, SYSV_DIRSIZE);
 dir_put_page(page);
 dir->i_mtime = dir->i_ctime = current_time(dir);
 mark_inode_dirty(dir);
}
