
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ index; } ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ pgoff_t ;


 int hugetlb_fix_reserve_counts (struct inode*) ;
 int hugetlb_unreserve_pages (struct inode*,scalar_t__,scalar_t__,int) ;
 int remove_huge_page (struct page*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int hugetlbfs_error_remove_page(struct address_space *mapping,
    struct page *page)
{
 struct inode *inode = mapping->host;
 pgoff_t index = page->index;

 remove_huge_page(page);
 if (unlikely(hugetlb_unreserve_pages(inode, index, index + 1, 1)))
  hugetlb_fix_reserve_counts(inode);

 return 0;
}
