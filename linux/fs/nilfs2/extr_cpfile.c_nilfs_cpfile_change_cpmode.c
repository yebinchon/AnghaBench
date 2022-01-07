
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
typedef int __u64 ;


 int EBUSY ;
 int EINVAL ;


 int nilfs_checkpoint_is_mounted (int ,int ) ;
 int nilfs_cpfile_clear_snapshot (struct inode*,int ) ;
 int nilfs_cpfile_set_snapshot (struct inode*,int ) ;

int nilfs_cpfile_change_cpmode(struct inode *cpfile, __u64 cno, int mode)
{
 int ret;

 switch (mode) {
 case 129:
  if (nilfs_checkpoint_is_mounted(cpfile->i_sb, cno))






   ret = -EBUSY;
  else
   ret = nilfs_cpfile_clear_snapshot(cpfile, cno);
  return ret;
 case 128:
  return nilfs_cpfile_set_snapshot(cpfile, cno);
 default:
  return -EINVAL;
 }
}
