
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int EBUSY ;
 int EIO ;
 int MF_COUNT_INCREASED ;
 scalar_t__ PageHWPoison (struct page*) ;
 int get_any_page (struct page*,unsigned long,int) ;
 int get_online_mems () ;
 scalar_t__ is_zone_device_page (struct page*) ;
 unsigned long page_to_pfn (struct page*) ;
 int pr_debug_ratelimited (char*,unsigned long) ;
 int pr_info (char*,unsigned long) ;
 int put_hwpoison_page (struct page*) ;
 int put_online_mems () ;
 int put_page (struct page*) ;
 int soft_offline_free_page (struct page*) ;
 int soft_offline_in_use_page (struct page*,int) ;

int soft_offline_page(struct page *page, int flags)
{
 int ret;
 unsigned long pfn = page_to_pfn(page);

 if (is_zone_device_page(page)) {
  pr_debug_ratelimited("soft_offline: %#lx page is device page\n",
    pfn);
  if (flags & MF_COUNT_INCREASED)
   put_page(page);
  return -EIO;
 }

 if (PageHWPoison(page)) {
  pr_info("soft offline: %#lx page already poisoned\n", pfn);
  if (flags & MF_COUNT_INCREASED)
   put_hwpoison_page(page);
  return -EBUSY;
 }

 get_online_mems();
 ret = get_any_page(page, pfn, flags);
 put_online_mems();

 if (ret > 0)
  ret = soft_offline_in_use_page(page, flags);
 else if (ret == 0)
  ret = soft_offline_free_page(page);

 return ret;
}
