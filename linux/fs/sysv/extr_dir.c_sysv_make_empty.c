
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_dir_entry {int name; void* inode; } ;
struct page {int dummy; } ;
struct inode {int i_ino; int i_sb; int i_mapping; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int SYSV_DIRSIZE ;
 int SYSV_SB (int ) ;
 void* cpu_to_fs16 (int ,int ) ;
 int dir_commit_chunk (struct page*,int ,int) ;
 struct page* grab_cache_page (int ,int ) ;
 int kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memset (char*,int ,int ) ;
 scalar_t__ page_address (struct page*) ;
 int put_page (struct page*) ;
 int strcpy (int ,char*) ;
 int sysv_prepare_chunk (struct page*,int ,int) ;
 int unlock_page (struct page*) ;

int sysv_make_empty(struct inode *inode, struct inode *dir)
{
 struct page *page = grab_cache_page(inode->i_mapping, 0);
 struct sysv_dir_entry * de;
 char *base;
 int err;

 if (!page)
  return -ENOMEM;
 err = sysv_prepare_chunk(page, 0, 2 * SYSV_DIRSIZE);
 if (err) {
  unlock_page(page);
  goto fail;
 }
 kmap(page);

 base = (char*)page_address(page);
 memset(base, 0, PAGE_SIZE);

 de = (struct sysv_dir_entry *) base;
 de->inode = cpu_to_fs16(SYSV_SB(inode->i_sb), inode->i_ino);
 strcpy(de->name,".");
 de++;
 de->inode = cpu_to_fs16(SYSV_SB(inode->i_sb), dir->i_ino);
 strcpy(de->name,"..");

 kunmap(page);
 err = dir_commit_chunk(page, 0, 2 * SYSV_DIRSIZE);
fail:
 put_page(page);
 return err;
}
