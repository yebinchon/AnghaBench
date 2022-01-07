
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tree_descr {int dummy; } ;
struct nfsdfs_client {int dummy; } ;
struct nfsd_net {int nfsd_client_dir; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int nfsd_client_rmdir (struct dentry*) ;
 struct dentry* nfsd_mkdir (int ,struct nfsdfs_client*,char*) ;
 int nfsdfs_create_files (struct dentry*,struct tree_descr const*) ;
 int sprintf (char*,char*,int) ;

struct dentry *nfsd_client_mkdir(struct nfsd_net *nn,
  struct nfsdfs_client *ncl, u32 id,
  const struct tree_descr *files)
{
 struct dentry *dentry;
 char name[11];
 int ret;

 sprintf(name, "%u", id);

 dentry = nfsd_mkdir(nn->nfsd_client_dir, ncl, name);
 if (IS_ERR(dentry))
  return ((void*)0);
 ret = nfsdfs_create_files(dentry, files);
 if (ret) {
  nfsd_client_rmdir(dentry);
  return ((void*)0);
 }
 return dentry;
}
