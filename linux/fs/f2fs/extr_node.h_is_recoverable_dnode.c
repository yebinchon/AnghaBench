
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_checkpoint {int dummy; } ;
typedef int __u64 ;


 int CP_CRC_RECOVERY_FLAG ;
 int CP_NOCRC_RECOVERY_FLAG ;
 struct f2fs_checkpoint* F2FS_CKPT (int ) ;
 int F2FS_P_SB (struct page*) ;
 scalar_t__ __is_set_ckpt_flags (struct f2fs_checkpoint*,int ) ;
 int cpver_of_node (struct page*) ;
 int cur_cp_crc (struct f2fs_checkpoint*) ;
 int cur_cp_version (struct f2fs_checkpoint*) ;

__attribute__((used)) static inline bool is_recoverable_dnode(struct page *page)
{
 struct f2fs_checkpoint *ckpt = F2FS_CKPT(F2FS_P_SB(page));
 __u64 cp_ver = cur_cp_version(ckpt);


 if (__is_set_ckpt_flags(ckpt, CP_NOCRC_RECOVERY_FLAG))
  return (cp_ver << 32) == (cpver_of_node(page) << 32);

 if (__is_set_ckpt_flags(ckpt, CP_CRC_RECOVERY_FLAG))
  cp_ver |= (cur_cp_crc(ckpt) << 32);

 return cp_ver == cpver_of_node(page);
}
