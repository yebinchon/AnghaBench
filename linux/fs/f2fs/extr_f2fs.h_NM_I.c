
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {scalar_t__ nm_info; } ;
struct f2fs_nm_info {int dummy; } ;



__attribute__((used)) static inline struct f2fs_nm_info *NM_I(struct f2fs_sb_info *sbi)
{
 return (struct f2fs_nm_info *)(sbi->nm_info);
}
