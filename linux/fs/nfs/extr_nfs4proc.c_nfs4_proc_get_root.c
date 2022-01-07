
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int fsid; } ;
struct nfs_fsinfo {struct nfs_fattr* fattr; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int valid; int fsid; } ;
struct nfs4_label {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct nfs4_label*) ;
 int NFS_ATTR_FATTR_FSID ;
 int PTR_ERR (struct nfs4_label*) ;
 int dprintk (char*,int) ;
 int memcpy (int *,int *,int) ;
 struct nfs4_label* nfs4_label_alloc (struct nfs_server*,int ) ;
 int nfs4_label_free (struct nfs4_label*) ;
 int nfs4_proc_getattr (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*,int *) ;
 int nfs4_server_capabilities (struct nfs_server*,struct nfs_fh*) ;
 int nfs_fsid_equal (int *,int *) ;

__attribute__((used)) static int nfs4_proc_get_root(struct nfs_server *server, struct nfs_fh *mntfh,
         struct nfs_fsinfo *info)
{
 int error;
 struct nfs_fattr *fattr = info->fattr;
 struct nfs4_label *label = ((void*)0);

 error = nfs4_server_capabilities(server, mntfh);
 if (error < 0) {
  dprintk("nfs4_get_root: getcaps error = %d\n", -error);
  return error;
 }

 label = nfs4_label_alloc(server, GFP_KERNEL);
 if (IS_ERR(label))
  return PTR_ERR(label);

 error = nfs4_proc_getattr(server, mntfh, fattr, label, ((void*)0));
 if (error < 0) {
  dprintk("nfs4_get_root: getattr error = %d\n", -error);
  goto err_free_label;
 }

 if (fattr->valid & NFS_ATTR_FATTR_FSID &&
     !nfs_fsid_equal(&server->fsid, &fattr->fsid))
  memcpy(&server->fsid, &fattr->fsid, sizeof(server->fsid));

err_free_label:
 nfs4_label_free(label);

 return error;
}
