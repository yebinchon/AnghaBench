
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdos_sb_info {int dummy; } ;
struct msdos_dir_entry {int starthi; int start; } ;


 scalar_t__ is_fat32 (struct msdos_sb_info const*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline int fat_get_start(const struct msdos_sb_info *sbi,
    const struct msdos_dir_entry *de)
{
 int cluster = le16_to_cpu(de->start);
 if (is_fat32(sbi))
  cluster |= (le16_to_cpu(de->starthi) << 16);
 return cluster;
}
