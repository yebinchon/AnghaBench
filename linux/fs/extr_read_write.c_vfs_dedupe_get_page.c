
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_mapping; } ;
typedef int loff_t ;


 int EIO ;
 struct page* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct page*) ;
 int PAGE_SHIFT ;
 int PageUptodate (struct page*) ;
 int put_page (struct page*) ;
 struct page* read_mapping_page (int ,int,int *) ;

__attribute__((used)) static struct page *vfs_dedupe_get_page(struct inode *inode, loff_t offset)
{
 struct page *page;

 page = read_mapping_page(inode->i_mapping, offset >> PAGE_SHIFT, ((void*)0));
 if (IS_ERR(page))
  return page;
 if (!PageUptodate(page)) {
  put_page(page);
  return ERR_PTR(-EIO);
 }
 return page;
}
