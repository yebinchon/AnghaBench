
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct page {int dummy; } ;
struct nfs4_label {int dummy; } ;
struct TYPE_6__ {unsigned int len; struct page** pages; } ;
struct TYPE_7__ {TYPE_2__ symlink; } ;
struct TYPE_8__ {struct nfs4_label* label; TYPE_3__ u; } ;
struct TYPE_5__ {int * rpc_proc; } ;
struct nfs4_createdata {TYPE_4__ arg; TYPE_1__ msg; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int d_name; } ;


 int ENAMETOOLONG ;
 int ENOMEM ;
 int NF4LNK ;
 unsigned int NFS4_MAXPATHLEN ;
 size_t NFSPROC4_CLNT_SYMLINK ;
 struct nfs4_createdata* nfs4_alloc_createdata (struct inode*,int *,struct iattr*,int ) ;
 int nfs4_do_create (struct inode*,struct dentry*,struct nfs4_createdata*) ;
 int nfs4_free_createdata (struct nfs4_createdata*) ;
 int * nfs4_procedures ;

__attribute__((used)) static int _nfs4_proc_symlink(struct inode *dir, struct dentry *dentry,
  struct page *page, unsigned int len, struct iattr *sattr,
  struct nfs4_label *label)
{
 struct nfs4_createdata *data;
 int status = -ENAMETOOLONG;

 if (len > NFS4_MAXPATHLEN)
  goto out;

 status = -ENOMEM;
 data = nfs4_alloc_createdata(dir, &dentry->d_name, sattr, NF4LNK);
 if (data == ((void*)0))
  goto out;

 data->msg.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_SYMLINK];
 data->arg.u.symlink.pages = &page;
 data->arg.u.symlink.len = len;
 data->arg.label = label;

 status = nfs4_do_create(dir, dentry, data);

 nfs4_free_createdata(data);
out:
 return status;
}
