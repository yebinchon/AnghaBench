
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ loff_t ;


 int EIO ;
 int ENOMEM ;
 scalar_t__ PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __udf_adinicb_readpage (struct page*) ;
 struct page* grab_cache_page_write_begin (struct address_space*,int ,unsigned int) ;

__attribute__((used)) static int udf_adinicb_write_begin(struct file *file,
   struct address_space *mapping, loff_t pos,
   unsigned len, unsigned flags, struct page **pagep,
   void **fsdata)
{
 struct page *page;

 if (WARN_ON_ONCE(pos >= PAGE_SIZE))
  return -EIO;
 page = grab_cache_page_write_begin(mapping, 0, flags);
 if (!page)
  return -ENOMEM;
 *pagep = page;

 if (!PageUptodate(page))
  __udf_adinicb_readpage(page);
 return 0;
}
