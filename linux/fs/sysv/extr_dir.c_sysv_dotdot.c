
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_dir_entry {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;


 int IS_ERR (struct page*) ;
 struct page* dir_get_page (struct inode*,int ) ;
 scalar_t__ page_address (struct page*) ;

struct sysv_dir_entry * sysv_dotdot (struct inode *dir, struct page **p)
{
 struct page *page = dir_get_page(dir, 0);
 struct sysv_dir_entry *de = ((void*)0);

 if (!IS_ERR(page)) {
  de = (struct sysv_dir_entry*) page_address(page) + 1;
  *p = page;
 }
 return de;
}
