
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {unsigned int total_valid_node_count; } ;



__attribute__((used)) static inline unsigned int valid_node_count(struct f2fs_sb_info *sbi)
{
 return sbi->total_valid_node_count;
}
