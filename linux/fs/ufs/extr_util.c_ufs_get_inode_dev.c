
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * i_data; } ;
struct ufs_inode_info {TYPE_1__ i_u1; } ;
struct super_block {int dummy; } ;
typedef int dev_t ;
typedef int __u32 ;
struct TYPE_4__ {int s_flags; } ;


 int MKDEV (int ,int ) ;
 TYPE_2__* UFS_SB (struct super_block*) ;
 int UFS_ST_MASK ;


 int fs32_to_cpu (struct super_block*,int ) ;
 int old_decode_dev (int) ;
 int sysv_major (int) ;
 int sysv_minor (int) ;

dev_t
ufs_get_inode_dev(struct super_block *sb, struct ufs_inode_info *ufsi)
{
 __u32 fs32;
 dev_t dev;

 if ((UFS_SB(sb)->s_flags & UFS_ST_MASK) == 128)
  fs32 = fs32_to_cpu(sb, ufsi->i_u1.i_data[1]);
 else
  fs32 = fs32_to_cpu(sb, ufsi->i_u1.i_data[0]);
 switch (UFS_SB(sb)->s_flags & UFS_ST_MASK) {
 case 128:
 case 129:
  if ((fs32 & 0xffff0000) == 0 ||
      (fs32 & 0xffff0000) == 0xffff0000)
   dev = old_decode_dev(fs32 & 0x7fff);
  else
   dev = MKDEV(sysv_major(fs32), sysv_minor(fs32));
  break;

 default:
  dev = old_decode_dev(fs32);
  break;
 }
 return dev;
}
