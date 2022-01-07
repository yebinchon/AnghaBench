
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
typedef int gfp_t ;


 int FAULT_KMALLOC ;
 int f2fs_show_injection_info (int ) ;
 void* kmalloc (size_t,int ) ;
 void* kvmalloc (size_t,int ) ;
 scalar_t__ time_to_inject (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static inline void *f2fs_kmalloc(struct f2fs_sb_info *sbi,
     size_t size, gfp_t flags)
{
 void *ret;

 if (time_to_inject(sbi, FAULT_KMALLOC)) {
  f2fs_show_injection_info(FAULT_KMALLOC);
  return ((void*)0);
 }

 ret = kmalloc(size, flags);
 if (ret)
  return ret;

 return kvmalloc(size, flags);
}
