
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
typedef int kprojid_t ;
struct TYPE_2__ {int i_projid; } ;


 int EOPNOTSUPP ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int ext4_has_feature_project (int ) ;

int ext4_get_projid(struct inode *inode, kprojid_t *projid)
{
 if (!ext4_has_feature_project(inode->i_sb))
  return -EOPNOTSUPP;
 *projid = EXT4_I(inode)->i_projid;
 return 0;
}
