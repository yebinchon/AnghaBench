
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int loff_t ;


 int PAGE_SIZE ;
 unsigned int nfs_page_length (struct page*) ;

__attribute__((used)) static bool nfs_full_page_write(struct page *page, loff_t pos, unsigned int len)
{
 unsigned int pglen = nfs_page_length(page);
 unsigned int offset = pos & (PAGE_SIZE - 1);
 unsigned int end = offset + len;

 return !pglen || (end >= pglen && !offset);
}
