
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;
struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct nfs4_secinfo_flavors {int dummy; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 struct rpc_clnt* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int NFS_SERVER (struct inode*) ;
 struct page* alloc_page (int ) ;
 int nfs4_proc_secinfo (struct inode*,struct qstr const*,struct nfs4_secinfo_flavors*) ;
 struct rpc_clnt* nfs_find_best_sec (struct rpc_clnt*,int ,struct nfs4_secinfo_flavors*) ;
 struct nfs4_secinfo_flavors* page_address (struct page*) ;
 int put_page (struct page*) ;

struct rpc_clnt *
nfs4_negotiate_security(struct rpc_clnt *clnt, struct inode *inode,
     const struct qstr *name)
{
 struct page *page;
 struct nfs4_secinfo_flavors *flavors;
 struct rpc_clnt *new;
 int err;

 page = alloc_page(GFP_KERNEL);
 if (!page)
  return ERR_PTR(-ENOMEM);

 flavors = page_address(page);

 err = nfs4_proc_secinfo(inode, name, flavors);
 if (err < 0) {
  new = ERR_PTR(err);
  goto out;
 }

 new = nfs_find_best_sec(clnt, NFS_SERVER(inode), flavors);

out:
 put_page(page);
 return new;
}
