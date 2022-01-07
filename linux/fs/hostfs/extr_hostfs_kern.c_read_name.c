
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; int i_blocks; int i_size; void* i_ctime; void* i_mtime; void* i_atime; int i_ino; TYPE_1__* i_mapping; int * i_fop; int * i_op; } ;
struct hostfs_stat {int mode; int blocks; int size; int ctime; int mtime; int atime; int gid; int uid; int nlink; int ino; int min; int maj; } ;
typedef int dev_t ;
struct TYPE_2__ {int * a_ops; } ;


 int EIO ;
 int MKDEV (int ,int ) ;





 int S_IFMT ;


 int hostfs_aops ;
 int hostfs_dir_fops ;
 int hostfs_dir_iops ;
 int hostfs_file_fops ;
 int hostfs_iops ;
 int hostfs_link_iops ;
 int i_gid_write (struct inode*,int ) ;
 int i_uid_write (struct inode*,int ) ;
 int init_special_inode (struct inode*,int,int ) ;
 int set_nlink (struct inode*,int ) ;
 int stat_file (char*,struct hostfs_stat*,int) ;
 void* timespec_to_timespec64 (int ) ;

__attribute__((used)) static int read_name(struct inode *ino, char *name)
{
 dev_t rdev;
 struct hostfs_stat st;
 int err = stat_file(name, &st, -1);
 if (err)
  return err;


 rdev = MKDEV(st.maj, st.min);

 switch (st.mode & S_IFMT) {
 case 130:
  ino->i_op = &hostfs_link_iops;
  break;
 case 132:
  ino->i_op = &hostfs_dir_iops;
  ino->i_fop = &hostfs_dir_fops;
  break;
 case 133:
 case 134:
 case 131:
 case 128:
  init_special_inode(ino, st.mode & S_IFMT, rdev);
  ino->i_op = &hostfs_iops;
  break;
 case 129:
  ino->i_op = &hostfs_iops;
  ino->i_fop = &hostfs_file_fops;
  ino->i_mapping->a_ops = &hostfs_aops;
  break;
 default:
  return -EIO;
 }

 ino->i_ino = st.ino;
 ino->i_mode = st.mode;
 set_nlink(ino, st.nlink);
 i_uid_write(ino, st.uid);
 i_gid_write(ino, st.gid);
 ino->i_atime = timespec_to_timespec64(st.atime);
 ino->i_mtime = timespec_to_timespec64(st.mtime);
 ino->i_ctime = timespec_to_timespec64(st.ctime);
 ino->i_size = st.size;
 ino->i_blocks = st.blocks;
 return 0;
}
