
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int ip_lockres; } ;


 TYPE_1__* DLMFS_I (struct inode*) ;
 int ML_ERROR ;
 struct inode* d_inode (struct dentry*) ;
 int mlog (int ,char*,struct dentry*,...) ;
 int simple_unlink (struct inode*,struct dentry*) ;
 int user_dlm_destroy_lock (int *) ;

__attribute__((used)) static int dlmfs_unlink(struct inode *dir,
   struct dentry *dentry)
{
 int status;
 struct inode *inode = d_inode(dentry);

 mlog(0, "unlink inode %lu\n", inode->i_ino);



 status = user_dlm_destroy_lock(&DLMFS_I(inode)->ip_lockres);
 if (status < 0) {
  mlog(ML_ERROR, "unlink %pd, error %d from destroy\n",
       dentry, status);
  goto bail;
 }
 status = simple_unlink(dir, dentry);
bail:
 return status;
}
