
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int EIO ;
 int * lock_rename (struct dentry*,struct dentry*) ;
 int pr_err (char*) ;
 int unlock_rename (struct dentry*,struct dentry*) ;

int ovl_lock_rename_workdir(struct dentry *workdir, struct dentry *upperdir)
{

 if (workdir == upperdir)
  goto err;


 if (lock_rename(workdir, upperdir) != ((void*)0))
  goto err_unlock;

 return 0;

err_unlock:
 unlock_rename(workdir, upperdir);
err:
 pr_err("overlayfs: failed to lock workdir+upperdir\n");
 return -EIO;
}
