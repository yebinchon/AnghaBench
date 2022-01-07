
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sm_info {int dummy; } ;
struct f2fs_sb_info {scalar_t__ sm_info; } ;



__attribute__((used)) static inline struct f2fs_sm_info *SM_I(struct f2fs_sb_info *sbi)
{
 return (struct f2fs_sm_info *)(sbi->sm_info);
}
