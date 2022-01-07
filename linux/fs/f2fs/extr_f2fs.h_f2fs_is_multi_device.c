
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int s_ndevs; } ;



__attribute__((used)) static inline bool f2fs_is_multi_device(struct f2fs_sb_info *sbi)
{
 return sbi->s_ndevs > 1;
}
