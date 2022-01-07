
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct posix_acl {int dummy; } ;
struct TYPE_7__ {int type; int rdev; struct iattr* sattr; int len; int name; int fh; } ;
struct TYPE_8__ {TYPE_3__ mknod; } ;
struct TYPE_5__ {int * rpc_proc; } ;
struct nfs3_createdata {TYPE_4__ arg; TYPE_1__ msg; } ;
struct inode {int dummy; } ;
struct iattr {int ia_mode; } ;
struct TYPE_6__ {int len; int name; } ;
struct dentry {TYPE_2__ d_name; } ;
typedef int dev_t ;


 int EINVAL ;
 int ENOMEM ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int NF3BLK ;
 int NF3CHR ;
 int NF3FIFO ;
 int NF3SOCK ;
 size_t NFS3PROC_MKNOD ;
 int NFS_FH (struct inode*) ;
 int PTR_ERR_OR_ZERO (struct dentry*) ;



 int S_IFMT ;

 int d_inode (struct dentry*) ;
 int dprintk (char*,...) ;
 int dput (struct dentry*) ;
 struct nfs3_createdata* nfs3_alloc_createdata () ;
 struct dentry* nfs3_do_create (struct inode*,struct dentry*,struct nfs3_createdata*) ;
 int nfs3_free_createdata (struct nfs3_createdata*) ;
 int nfs3_proc_setacls (int ,struct posix_acl*,struct posix_acl*) ;
 int * nfs3_procedures ;
 int posix_acl_create (struct inode*,int*,struct posix_acl**,struct posix_acl**) ;
 int posix_acl_release (struct posix_acl*) ;

__attribute__((used)) static int
nfs3_proc_mknod(struct inode *dir, struct dentry *dentry, struct iattr *sattr,
  dev_t rdev)
{
 struct posix_acl *default_acl, *acl;
 struct nfs3_createdata *data;
 struct dentry *d_alias;
 int status = -ENOMEM;

 dprintk("NFS call  mknod %pd %u:%u\n", dentry,
   MAJOR(rdev), MINOR(rdev));

 data = nfs3_alloc_createdata();
 if (data == ((void*)0))
  goto out;

 status = posix_acl_create(dir, &sattr->ia_mode, &default_acl, &acl);
 if (status)
  goto out;

 data->msg.rpc_proc = &nfs3_procedures[NFS3PROC_MKNOD];
 data->arg.mknod.fh = NFS_FH(dir);
 data->arg.mknod.name = dentry->d_name.name;
 data->arg.mknod.len = dentry->d_name.len;
 data->arg.mknod.sattr = sattr;
 data->arg.mknod.rdev = rdev;

 switch (sattr->ia_mode & S_IFMT) {
 case 131:
  data->arg.mknod.type = NF3BLK;
  break;
 case 130:
  data->arg.mknod.type = NF3CHR;
  break;
 case 129:
  data->arg.mknod.type = NF3FIFO;
  break;
 case 128:
  data->arg.mknod.type = NF3SOCK;
  break;
 default:
  status = -EINVAL;
  goto out;
 }

 d_alias = nfs3_do_create(dir, dentry, data);
 status = PTR_ERR_OR_ZERO(d_alias);
 if (status != 0)
  goto out_release_acls;

 if (d_alias)
  dentry = d_alias;

 status = nfs3_proc_setacls(d_inode(dentry), acl, default_acl);

 dput(d_alias);
out_release_acls:
 posix_acl_release(acl);
 posix_acl_release(default_acl);
out:
 nfs3_free_createdata(data);
 dprintk("NFS reply mknod: %d\n", status);
 return status;
}
