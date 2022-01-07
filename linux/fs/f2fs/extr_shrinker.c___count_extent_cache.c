
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int total_ext_node; int total_zombie_tree; } ;


 unsigned long atomic_read (int *) ;

__attribute__((used)) static unsigned long __count_extent_cache(struct f2fs_sb_info *sbi)
{
 return atomic_read(&sbi->total_zombie_tree) +
    atomic_read(&sbi->total_ext_node);
}
