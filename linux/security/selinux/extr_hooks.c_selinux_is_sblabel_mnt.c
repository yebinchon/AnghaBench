
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblock_security_struct {int behavior; } ;
struct super_block {struct superblock_security_struct* s_security; } ;


 int BUILD_BUG_ON (int) ;

 int SECURITY_FS_USE_MAX ;






 int selinux_is_genfs_special_handling (struct super_block*) ;

__attribute__((used)) static int selinux_is_sblabel_mnt(struct super_block *sb)
{
 struct superblock_security_struct *sbsec = sb->s_security;





 BUILD_BUG_ON(SECURITY_FS_USE_MAX != 7);

 switch (sbsec->behavior) {
 case 128:
 case 129:
 case 130:
 case 132:
  return 1;

 case 134:
  return selinux_is_genfs_special_handling(sb);


 case 133:
 case 131:
 default:
  return 0;
 }
}
