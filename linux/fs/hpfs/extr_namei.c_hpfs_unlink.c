
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct quad_buffer_head {int dummy; } ;
struct inode {int i_sb; } ;
struct hpfs_dirent {scalar_t__ directory; scalar_t__ first; } ;
struct TYPE_3__ {unsigned char* name; unsigned int len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef int dnode_secno ;
struct TYPE_4__ {int i_dno; } ;


 int EFSERROR ;
 int EISDIR ;
 int ENOENT ;
 int ENOSPC ;
 int EPERM ;
 struct inode* d_inode (struct dentry*) ;
 int drop_nlink (struct inode*) ;
 int hpfs_adjust_length (unsigned char const*,unsigned int*) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 int hpfs_error (int ,char*) ;
 TYPE_2__* hpfs_i (struct inode*) ;
 int hpfs_lock (int ) ;
 int hpfs_remove_dirent (struct inode*,int ,struct hpfs_dirent*,struct quad_buffer_head*,int) ;
 int hpfs_unlock (int ) ;
 int hpfs_update_directory_times (struct inode*) ;
 struct hpfs_dirent* map_dirent (struct inode*,int ,unsigned char const*,unsigned int,int *,struct quad_buffer_head*) ;

__attribute__((used)) static int hpfs_unlink(struct inode *dir, struct dentry *dentry)
{
 const unsigned char *name = dentry->d_name.name;
 unsigned len = dentry->d_name.len;
 struct quad_buffer_head qbh;
 struct hpfs_dirent *de;
 struct inode *inode = d_inode(dentry);
 dnode_secno dno;
 int r;
 int err;

 hpfs_lock(dir->i_sb);
 hpfs_adjust_length(name, &len);

 err = -ENOENT;
 de = map_dirent(dir, hpfs_i(dir)->i_dno, name, len, &dno, &qbh);
 if (!de)
  goto out;

 err = -EPERM;
 if (de->first)
  goto out1;

 err = -EISDIR;
 if (de->directory)
  goto out1;

 r = hpfs_remove_dirent(dir, dno, de, &qbh, 1);
 switch (r) {
 case 1:
  hpfs_error(dir->i_sb, "there was error when removing dirent");
  err = -EFSERROR;
  break;
 case 2:
  err = -ENOSPC;
  break;
 default:
  drop_nlink(inode);
  err = 0;
 }
 goto out;

out1:
 hpfs_brelse4(&qbh);
out:
 if (!err)
  hpfs_update_directory_times(dir);
 hpfs_unlock(dir->i_sb);
 return err;
}
