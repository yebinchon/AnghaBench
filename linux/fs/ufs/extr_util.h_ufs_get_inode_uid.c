
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int ui_suid; } ;
struct TYPE_11__ {TYPE_4__ oldids; } ;
struct TYPE_8__ {int ui_uid; } ;
struct TYPE_7__ {int ui_uid; } ;
struct TYPE_9__ {TYPE_2__ ui_sun; TYPE_1__ ui_44; } ;
struct ufs_inode {TYPE_5__ ui_u1; TYPE_3__ ui_u3; } ;
struct super_block {int dummy; } ;
struct TYPE_12__ {int s_flags; } ;


 TYPE_6__* UFS_SB (struct super_block*) ;


 int UFS_UID_MASK ;
 int fs16_to_cpu (struct super_block*,int) ;
 int fs32_to_cpu (struct super_block*,int ) ;

__attribute__((used)) static inline u32
ufs_get_inode_uid(struct super_block *sb, struct ufs_inode *inode)
{
 switch (UFS_SB(sb)->s_flags & UFS_UID_MASK) {
 case 129:
  return fs32_to_cpu(sb, inode->ui_u3.ui_44.ui_uid);
 case 128:
  if (inode->ui_u1.oldids.ui_suid == 0xFFFF)
   return fs32_to_cpu(sb, inode->ui_u3.ui_sun.ui_uid);

 default:
  return fs16_to_cpu(sb, inode->ui_u1.oldids.ui_suid);
 }
}
