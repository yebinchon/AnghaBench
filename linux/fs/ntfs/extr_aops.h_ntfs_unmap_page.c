
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int kunmap (struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static inline void ntfs_unmap_page(struct page *page)
{
 kunmap(page);
 put_page(page);
}
