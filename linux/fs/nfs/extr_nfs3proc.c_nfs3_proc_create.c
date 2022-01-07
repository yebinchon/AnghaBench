
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


struct posix_acl {int dummy; } ;
struct TYPE_11__ {int fattr; int dir_attr; } ;
struct TYPE_9__ {int createmode; void** verifier; struct iattr* sattr; int len; int name; int fh; } ;
struct TYPE_10__ {TYPE_3__ create; } ;
struct TYPE_7__ {int * rpc_proc; } ;
struct nfs3_createdata {TYPE_5__ res; TYPE_4__ arg; TYPE_1__ msg; } ;
struct inode {int dummy; } ;
struct iattr {int ia_valid; int ia_mode; } ;
struct TYPE_8__ {int len; int name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_12__ {int pid; } ;


 int ATTR_ATIME ;
 int ATTR_ATIME_SET ;
 int ATTR_MTIME ;
 int ATTR_MTIME_SET ;
 int ENOMEM ;
 int ENOTSUPP ;
 size_t NFS3PROC_CREATE ;



 int NFS_FH (struct inode*) ;
 int O_EXCL ;
 int PTR_ERR_OR_ZERO (struct dentry*) ;
 void* cpu_to_be32 (int ) ;
 TYPE_6__* current ;
 int d_inode (struct dentry*) ;
 int dprintk (char*,...) ;
 int dput (struct dentry*) ;
 int jiffies ;
 struct nfs3_createdata* nfs3_alloc_createdata () ;
 struct dentry* nfs3_do_create (struct inode*,struct dentry*,struct nfs3_createdata*) ;
 int nfs3_free_createdata (struct nfs3_createdata*) ;
 int nfs3_proc_setacls (int ,struct posix_acl*,struct posix_acl*) ;
 int nfs3_proc_setattr (struct dentry*,int ,struct iattr*) ;
 int * nfs3_procedures ;
 int nfs_fattr_init (int ) ;
 int nfs_post_op_update_inode (int ,int ) ;
 int posix_acl_create (struct inode*,int *,struct posix_acl**,struct posix_acl**) ;
 int posix_acl_release (struct posix_acl*) ;

__attribute__((used)) static int
nfs3_proc_create(struct inode *dir, struct dentry *dentry, struct iattr *sattr,
   int flags)
{
 struct posix_acl *default_acl, *acl;
 struct nfs3_createdata *data;
 struct dentry *d_alias;
 int status = -ENOMEM;

 dprintk("NFS call  create %pd\n", dentry);

 data = nfs3_alloc_createdata();
 if (data == ((void*)0))
  goto out;

 data->msg.rpc_proc = &nfs3_procedures[NFS3PROC_CREATE];
 data->arg.create.fh = NFS_FH(dir);
 data->arg.create.name = dentry->d_name.name;
 data->arg.create.len = dentry->d_name.len;
 data->arg.create.sattr = sattr;

 data->arg.create.createmode = 128;
 if (flags & O_EXCL) {
  data->arg.create.createmode = 130;
  data->arg.create.verifier[0] = cpu_to_be32(jiffies);
  data->arg.create.verifier[1] = cpu_to_be32(current->pid);
 }

 status = posix_acl_create(dir, &sattr->ia_mode, &default_acl, &acl);
 if (status)
  goto out;

 for (;;) {
  d_alias = nfs3_do_create(dir, dentry, data);
  status = PTR_ERR_OR_ZERO(d_alias);

  if (status != -ENOTSUPP)
   break;


  switch (data->arg.create.createmode) {
   case 130:
    data->arg.create.createmode = 129;
    break;

   case 129:
    data->arg.create.createmode = 128;
    break;

   case 128:
    goto out;
  }
  nfs_fattr_init(data->res.dir_attr);
  nfs_fattr_init(data->res.fattr);
 }

 if (status != 0)
  goto out_release_acls;

 if (d_alias)
  dentry = d_alias;



 if (data->arg.create.createmode == 130) {
  dprintk("NFS call  setattr (post-create)\n");

  if (!(sattr->ia_valid & ATTR_ATIME_SET))
   sattr->ia_valid |= ATTR_ATIME;
  if (!(sattr->ia_valid & ATTR_MTIME_SET))
   sattr->ia_valid |= ATTR_MTIME;




  status = nfs3_proc_setattr(dentry, data->res.fattr, sattr);
  nfs_post_op_update_inode(d_inode(dentry), data->res.fattr);
  dprintk("NFS reply setattr (post-create): %d\n", status);
  if (status != 0)
   goto out_dput;
 }

 status = nfs3_proc_setacls(d_inode(dentry), acl, default_acl);

out_dput:
 dput(d_alias);
out_release_acls:
 posix_acl_release(acl);
 posix_acl_release(default_acl);
out:
 nfs3_free_createdata(data);
 dprintk("NFS reply create: %d\n", status);
 return status;
}
