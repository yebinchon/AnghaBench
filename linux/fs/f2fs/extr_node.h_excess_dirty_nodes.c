
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int blocks_per_seg; } ;


 int F2FS_DIRTY_NODES ;
 int get_pages (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static inline bool excess_dirty_nodes(struct f2fs_sb_info *sbi)
{
 return get_pages(sbi, F2FS_DIRTY_NODES) >= sbi->blocks_per_seg * 8;
}
