
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdos_sb_info {int max_cluster; } ;


 int FAT_START_ENT ;

__attribute__((used)) static inline bool fat_valid_entry(struct msdos_sb_info *sbi, int entry)
{
 return FAT_START_ENT <= entry && entry < sbi->max_cluster;
}
