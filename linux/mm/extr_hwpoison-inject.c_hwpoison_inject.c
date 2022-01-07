
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct page {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int ENXIO ;
 int EPERM ;
 int MF_COUNT_INCREASED ;
 int PageHuge (struct page*) ;
 int PageLRU (struct page*) ;
 int capable (int ) ;
 struct page* compound_head (struct page*) ;
 int get_hwpoison_page (struct page*) ;
 int hwpoison_filter (struct page*) ;
 int hwpoison_filter_enable ;
 int memory_failure (unsigned long,int ) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 int pr_info (char*,unsigned long) ;
 int put_hwpoison_page (struct page*) ;
 int shake_page (struct page*,int ) ;

__attribute__((used)) static int hwpoison_inject(void *data, u64 val)
{
 unsigned long pfn = val;
 struct page *p;
 struct page *hpage;
 int err;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 if (!pfn_valid(pfn))
  return -ENXIO;

 p = pfn_to_page(pfn);
 hpage = compound_head(p);



 if (!get_hwpoison_page(p))
  return 0;

 if (!hwpoison_filter_enable)
  goto inject;

 shake_page(hpage, 0);



 if (!PageLRU(hpage) && !PageHuge(p))
  goto put_out;






 err = hwpoison_filter(hpage);
 if (err)
  goto put_out;

inject:
 pr_info("Injecting memory failure at pfn %#lx\n", pfn);
 return memory_failure(pfn, MF_COUNT_INCREASED);
put_out:
 put_hwpoison_page(p);
 return 0;
}
