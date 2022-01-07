
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;




 int NOTIFY_OK ;
 int NR_FREE_PAGES ;
 int PAGE_SHIFT ;
 unsigned long global_zone_page_state (int ) ;
 int init_admin_reserve () ;
 int init_user_reserve () ;
 int pr_info (char*,unsigned long) ;
 unsigned long sysctl_admin_reserve_kbytes ;
 unsigned long sysctl_user_reserve_kbytes ;

__attribute__((used)) static int reserve_mem_notifier(struct notifier_block *nb,
        unsigned long action, void *data)
{
 unsigned long tmp, free_kbytes;

 switch (action) {
 case 128:

  tmp = sysctl_user_reserve_kbytes;
  if (0 < tmp && tmp < (1UL << 17))
   init_user_reserve();


  tmp = sysctl_admin_reserve_kbytes;
  if (0 < tmp && tmp < (1UL << 13))
   init_admin_reserve();

  break;
 case 129:
  free_kbytes = global_zone_page_state(NR_FREE_PAGES) << (PAGE_SHIFT - 10);

  if (sysctl_user_reserve_kbytes > free_kbytes) {
   init_user_reserve();
   pr_info("vm.user_reserve_kbytes reset to %lu\n",
    sysctl_user_reserve_kbytes);
  }

  if (sysctl_admin_reserve_kbytes > free_kbytes) {
   init_admin_reserve();
   pr_info("vm.admin_reserve_kbytes reset to %lu\n",
    sysctl_admin_reserve_kbytes);
  }
  break;
 default:
  break;
 }
 return NOTIFY_OK;
}
