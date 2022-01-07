
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfsd_net {TYPE_2__* rec_file; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct TYPE_4__ {TYPE_1__ f_path; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int I_MUTEX_PARENT ;
 int PTR_ERR (struct dentry*) ;
 int d_inode (struct dentry*) ;
 scalar_t__ d_really_is_negative (struct dentry*) ;
 int dprintk (char*,int,char*) ;
 int dput (struct dentry*) ;
 int inode_lock_nested (int ,int ) ;
 int inode_unlock (int ) ;
 struct dentry* lookup_one_len (char*,struct dentry*,int) ;
 int vfs_rmdir (int ,struct dentry*) ;

__attribute__((used)) static int
nfsd4_unlink_clid_dir(char *name, int namlen, struct nfsd_net *nn)
{
 struct dentry *dir, *dentry;
 int status;

 dprintk("NFSD: nfsd4_unlink_clid_dir. name %.*s\n", namlen, name);

 dir = nn->rec_file->f_path.dentry;
 inode_lock_nested(d_inode(dir), I_MUTEX_PARENT);
 dentry = lookup_one_len(name, dir, namlen);
 if (IS_ERR(dentry)) {
  status = PTR_ERR(dentry);
  goto out_unlock;
 }
 status = -ENOENT;
 if (d_really_is_negative(dentry))
  goto out;
 status = vfs_rmdir(d_inode(dir), dentry);
out:
 dput(dentry);
out_unlock:
 inode_unlock(d_inode(dir));
 return status;
}
