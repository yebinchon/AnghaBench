
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;


 int F2FS_DIRTY_DENTS ;
 int F2FS_DIRTY_IMETA ;
 int F2FS_DIRTY_NODES ;
 int SBI_POR_DOING ;
 scalar_t__ free_sections (struct f2fs_sb_info*) ;
 int get_blocktype_secs (struct f2fs_sb_info*,int ) ;
 scalar_t__ has_curseg_enough_space (struct f2fs_sb_info*) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 scalar_t__ reserved_sections (struct f2fs_sb_info*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline bool has_not_enough_free_secs(struct f2fs_sb_info *sbi,
     int freed, int needed)
{
 int node_secs = get_blocktype_secs(sbi, F2FS_DIRTY_NODES);
 int dent_secs = get_blocktype_secs(sbi, F2FS_DIRTY_DENTS);
 int imeta_secs = get_blocktype_secs(sbi, F2FS_DIRTY_IMETA);

 if (unlikely(is_sbi_flag_set(sbi, SBI_POR_DOING)))
  return 0;

 if (free_sections(sbi) + freed == reserved_sections(sbi) + needed &&
   has_curseg_enough_space(sbi))
  return 0;
 return (free_sections(sbi) + freed) <=
  (node_secs + 2 * dent_secs + imeta_secs +
  reserved_sections(sbi) + needed);
}
