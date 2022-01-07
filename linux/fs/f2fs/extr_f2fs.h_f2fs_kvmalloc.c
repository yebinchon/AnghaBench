
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
typedef int gfp_t ;


 int FAULT_KVMALLOC ;
 int f2fs_show_injection_info (int ) ;
 void* kvmalloc (size_t,int ) ;
 scalar_t__ time_to_inject (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static inline void *f2fs_kvmalloc(struct f2fs_sb_info *sbi,
     size_t size, gfp_t flags)
{
 if (time_to_inject(sbi, FAULT_KVMALLOC)) {
  f2fs_show_injection_info(FAULT_KVMALLOC);
  return ((void*)0);
 }

 return kvmalloc(size, flags);
}
