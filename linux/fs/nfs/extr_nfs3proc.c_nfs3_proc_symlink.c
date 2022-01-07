
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_7__ {unsigned int pathlen; struct iattr* sattr; struct page** pages; int fromlen; int fromname; int fromfh; } ;
struct TYPE_8__ {TYPE_3__ symlink; } ;
struct TYPE_5__ {int * rpc_proc; } ;
struct nfs3_createdata {TYPE_4__ arg; TYPE_1__ msg; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct TYPE_6__ {int len; int name; } ;
struct dentry {TYPE_2__ d_name; } ;


 int ENAMETOOLONG ;
 int ENOMEM ;
 size_t NFS3PROC_SYMLINK ;
 unsigned int NFS3_MAXPATHLEN ;
 int NFS_FH (struct inode*) ;
 int PTR_ERR_OR_ZERO (struct dentry*) ;
 int dprintk (char*,...) ;
 int dput (struct dentry*) ;
 struct nfs3_createdata* nfs3_alloc_createdata () ;
 struct dentry* nfs3_do_create (struct inode*,struct dentry*,struct nfs3_createdata*) ;
 int nfs3_free_createdata (struct nfs3_createdata*) ;
 int * nfs3_procedures ;

__attribute__((used)) static int
nfs3_proc_symlink(struct inode *dir, struct dentry *dentry, struct page *page,
    unsigned int len, struct iattr *sattr)
{
 struct nfs3_createdata *data;
 struct dentry *d_alias;
 int status = -ENOMEM;

 if (len > NFS3_MAXPATHLEN)
  return -ENAMETOOLONG;

 dprintk("NFS call  symlink %pd\n", dentry);

 data = nfs3_alloc_createdata();
 if (data == ((void*)0))
  goto out;
 data->msg.rpc_proc = &nfs3_procedures[NFS3PROC_SYMLINK];
 data->arg.symlink.fromfh = NFS_FH(dir);
 data->arg.symlink.fromname = dentry->d_name.name;
 data->arg.symlink.fromlen = dentry->d_name.len;
 data->arg.symlink.pages = &page;
 data->arg.symlink.pathlen = len;
 data->arg.symlink.sattr = sattr;

 d_alias = nfs3_do_create(dir, dentry, data);
 status = PTR_ERR_OR_ZERO(d_alias);

 if (status == 0)
  dput(d_alias);

 nfs3_free_createdata(data);
out:
 dprintk("NFS reply symlink: %d\n", status);
 return status;
}
