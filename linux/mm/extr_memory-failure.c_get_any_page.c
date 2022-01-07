
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;


 int EIO ;
 int PageHuge (struct page*) ;
 int PageLRU (struct page*) ;
 int __PageMovable (struct page*) ;
 int __get_any_page (struct page*,unsigned long,int) ;
 int pr_info (char*,unsigned long,int ,int *) ;
 int put_hwpoison_page (struct page*) ;
 int shake_page (struct page*,int) ;

__attribute__((used)) static int get_any_page(struct page *page, unsigned long pfn, int flags)
{
 int ret = __get_any_page(page, pfn, flags);

 if (ret == 1 && !PageHuge(page) &&
     !PageLRU(page) && !__PageMovable(page)) {



  put_hwpoison_page(page);
  shake_page(page, 1);




  ret = __get_any_page(page, pfn, 0);
  if (ret == 1 && !PageLRU(page)) {

   put_hwpoison_page(page);
   pr_info("soft_offline: %#lx: unknown non LRU page type %lx (%pGp)\n",
    pfn, page->flags, &page->flags);
   return -EIO;
  }
 }
 return ret;
}
