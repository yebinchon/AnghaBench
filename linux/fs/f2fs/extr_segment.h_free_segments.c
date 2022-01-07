
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {unsigned int free_segments; } ;


 TYPE_1__* FREE_I (struct f2fs_sb_info*) ;

__attribute__((used)) static inline unsigned int free_segments(struct f2fs_sb_info *sbi)
{
 return FREE_I(sbi)->free_segments;
}
