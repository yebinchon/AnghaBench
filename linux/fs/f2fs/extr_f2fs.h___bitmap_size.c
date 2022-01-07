
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct f2fs_checkpoint {int sit_ver_bitmap_bytesize; int nat_ver_bitmap_bytesize; } ;


 struct f2fs_checkpoint* F2FS_CKPT (struct f2fs_sb_info*) ;
 int NAT_BITMAP ;
 int SIT_BITMAP ;
 unsigned long le32_to_cpu (int ) ;

__attribute__((used)) static inline unsigned long __bitmap_size(struct f2fs_sb_info *sbi, int flag)
{
 struct f2fs_checkpoint *ckpt = F2FS_CKPT(sbi);


 if (flag == NAT_BITMAP)
  return le32_to_cpu(ckpt->nat_ver_bitmap_bytesize);
 else if (flag == SIT_BITMAP)
  return le32_to_cpu(ckpt->sit_ver_bitmap_bytesize);

 return 0;
}
