
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;


 int EIO ;
 struct page* ERR_PTR (int ) ;
 int IS_ERR (struct page*) ;
 int PageChecked (struct page*) ;
 scalar_t__ PageError (struct page*) ;
 int kmap (struct page*) ;
 struct page* read_mapping_page (struct address_space*,unsigned long,int *) ;
 int ufs_check_page (struct page*) ;
 int ufs_put_page (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct page *ufs_get_page(struct inode *dir, unsigned long n)
{
 struct address_space *mapping = dir->i_mapping;
 struct page *page = read_mapping_page(mapping, n, ((void*)0));
 if (!IS_ERR(page)) {
  kmap(page);
  if (unlikely(!PageChecked(page))) {
   if (PageError(page) || !ufs_check_page(page))
    goto fail;
  }
 }
 return page;

fail:
 ufs_put_page(page);
 return ERR_PTR(-EIO);
}
