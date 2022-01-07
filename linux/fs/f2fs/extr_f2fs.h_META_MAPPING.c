
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {TYPE_1__* meta_inode; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {struct address_space* i_mapping; } ;



__attribute__((used)) static inline struct address_space *META_MAPPING(struct f2fs_sb_info *sbi)
{
 return sbi->meta_inode->i_mapping;
}
