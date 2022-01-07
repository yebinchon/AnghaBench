
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct iattr {int ia_valid; int ia_mode; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;
struct TYPE_4__ {int (* mknod ) (struct inode*,struct dentry*,struct iattr*,int ) ;} ;
struct TYPE_3__ {int s_id; } ;


 int ATTR_MODE ;
 TYPE_2__* NFS_PROTO (struct inode*) ;
 int VFS ;
 int d_drop (struct dentry*) ;
 int dfprintk (int ,char*,int ,int ,struct dentry*) ;
 int stub1 (struct inode*,struct dentry*,struct iattr*,int ) ;
 int trace_nfs_mknod_enter (struct inode*,struct dentry*) ;
 int trace_nfs_mknod_exit (struct inode*,struct dentry*,int) ;

int
nfs_mknod(struct inode *dir, struct dentry *dentry, umode_t mode, dev_t rdev)
{
 struct iattr attr;
 int status;

 dfprintk(VFS, "NFS: mknod(%s/%lu), %pd\n",
   dir->i_sb->s_id, dir->i_ino, dentry);

 attr.ia_mode = mode;
 attr.ia_valid = ATTR_MODE;

 trace_nfs_mknod_enter(dir, dentry);
 status = NFS_PROTO(dir)->mknod(dir, dentry, &attr, rdev);
 trace_nfs_mknod_exit(dir, dentry, status);
 if (status != 0)
  goto out_err;
 return 0;
out_err:
 d_drop(dentry);
 return status;
}
