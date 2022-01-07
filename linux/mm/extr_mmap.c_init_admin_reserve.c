
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_FREE_PAGES ;
 int PAGE_SHIFT ;
 int global_zone_page_state (int ) ;
 int min (unsigned long,unsigned long) ;
 int sysctl_admin_reserve_kbytes ;

__attribute__((used)) static int init_admin_reserve(void)
{
 unsigned long free_kbytes;

 free_kbytes = global_zone_page_state(NR_FREE_PAGES) << (PAGE_SHIFT - 10);

 sysctl_admin_reserve_kbytes = min(free_kbytes / 32, 1UL << 13);
 return 0;
}
