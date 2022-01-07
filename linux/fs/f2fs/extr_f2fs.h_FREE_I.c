
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct free_segmap_info {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ free_info; } ;


 TYPE_1__* SM_I (struct f2fs_sb_info*) ;

__attribute__((used)) static inline struct free_segmap_info *FREE_I(struct f2fs_sb_info *sbi)
{
 return (struct free_segmap_info *)(SM_I(sbi)->free_info);
}
