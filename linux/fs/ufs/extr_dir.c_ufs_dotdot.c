
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_dir_entry {int dummy; } ;
struct page {int dummy; } ;
struct inode {int i_sb; } ;


 int IS_ERR (struct page*) ;
 scalar_t__ page_address (struct page*) ;
 struct page* ufs_get_page (struct inode*,int ) ;
 struct ufs_dir_entry* ufs_next_entry (int ,struct ufs_dir_entry*) ;

struct ufs_dir_entry *ufs_dotdot(struct inode *dir, struct page **p)
{
 struct page *page = ufs_get_page(dir, 0);
 struct ufs_dir_entry *de = ((void*)0);

 if (!IS_ERR(page)) {
  de = ufs_next_entry(dir->i_sb,
        (struct ufs_dir_entry *)page_address(page));
  *p = page;
 }
 return de;
}
