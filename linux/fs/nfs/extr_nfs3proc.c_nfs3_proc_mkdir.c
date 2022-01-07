
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct posix_acl {int dummy; } ;
struct TYPE_7__ {struct iattr* sattr; int len; int name; int fh; } ;
struct TYPE_8__ {TYPE_3__ mkdir; } ;
struct TYPE_5__ {int * rpc_proc; } ;
struct nfs3_createdata {TYPE_4__ arg; TYPE_1__ msg; } ;
struct inode {int dummy; } ;
struct iattr {int ia_mode; } ;
struct TYPE_6__ {int len; int name; } ;
struct dentry {TYPE_2__ d_name; } ;


 int ENOMEM ;
 size_t NFS3PROC_MKDIR ;
 int NFS_FH (struct inode*) ;
 int PTR_ERR_OR_ZERO (struct dentry*) ;
 int d_inode (struct dentry*) ;
 int dprintk (char*,...) ;
 int dput (struct dentry*) ;
 struct nfs3_createdata* nfs3_alloc_createdata () ;
 struct dentry* nfs3_do_create (struct inode*,struct dentry*,struct nfs3_createdata*) ;
 int nfs3_free_createdata (struct nfs3_createdata*) ;
 int nfs3_proc_setacls (int ,struct posix_acl*,struct posix_acl*) ;
 int * nfs3_procedures ;
 int posix_acl_create (struct inode*,int *,struct posix_acl**,struct posix_acl**) ;
 int posix_acl_release (struct posix_acl*) ;

__attribute__((used)) static int
nfs3_proc_mkdir(struct inode *dir, struct dentry *dentry, struct iattr *sattr)
{
 struct posix_acl *default_acl, *acl;
 struct nfs3_createdata *data;
 struct dentry *d_alias;
 int status = -ENOMEM;

 dprintk("NFS call  mkdir %pd\n", dentry);

 data = nfs3_alloc_createdata();
 if (data == ((void*)0))
  goto out;

 status = posix_acl_create(dir, &sattr->ia_mode, &default_acl, &acl);
 if (status)
  goto out;

 data->msg.rpc_proc = &nfs3_procedures[NFS3PROC_MKDIR];
 data->arg.mkdir.fh = NFS_FH(dir);
 data->arg.mkdir.name = dentry->d_name.name;
 data->arg.mkdir.len = dentry->d_name.len;
 data->arg.mkdir.sattr = sattr;

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
 dprintk("NFS reply mkdir: %d\n", status);
 return status;
}
