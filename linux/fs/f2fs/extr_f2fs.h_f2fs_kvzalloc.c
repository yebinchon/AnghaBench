
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
typedef int gfp_t ;


 int __GFP_ZERO ;
 void* f2fs_kvmalloc (struct f2fs_sb_info*,size_t,int) ;

__attribute__((used)) static inline void *f2fs_kvzalloc(struct f2fs_sb_info *sbi,
     size_t size, gfp_t flags)
{
 return f2fs_kvmalloc(sbi, size, flags | __GFP_ZERO);
}
