
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nilfs_dir_entry {int dummy; } ;
struct inode {int dummy; } ;


 int IS_ERR (struct page*) ;
 struct page* nilfs_get_page (struct inode*,int ) ;
 struct nilfs_dir_entry* nilfs_next_entry (struct nilfs_dir_entry*) ;
 scalar_t__ page_address (struct page*) ;

struct nilfs_dir_entry *nilfs_dotdot(struct inode *dir, struct page **p)
{
 struct page *page = nilfs_get_page(dir, 0);
 struct nilfs_dir_entry *de = ((void*)0);

 if (!IS_ERR(page)) {
  de = nilfs_next_entry(
   (struct nilfs_dir_entry *)page_address(page));
  *p = page;
 }
 return de;
}
