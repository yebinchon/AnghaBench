
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layoutdriver_type {void (* free_layout_hdr ) (struct pnfs_layout_hdr*) ;} ;
struct pnfs_layout_hdr {int plh_lc_cred; int plh_layouts; int plh_inode; } ;
struct nfs_server {struct nfs_client* nfs_client; struct pnfs_layoutdriver_type* pnfs_curr_ld; } ;
struct nfs_client {int cl_lock; } ;


 struct nfs_server* NFS_SERVER (int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int put_cred (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 void stub1 (struct pnfs_layout_hdr*) ;

__attribute__((used)) static void
pnfs_free_layout_hdr(struct pnfs_layout_hdr *lo)
{
 struct nfs_server *server = NFS_SERVER(lo->plh_inode);
 struct pnfs_layoutdriver_type *ld = server->pnfs_curr_ld;

 if (!list_empty(&lo->plh_layouts)) {
  struct nfs_client *clp = server->nfs_client;

  spin_lock(&clp->cl_lock);
  list_del_init(&lo->plh_layouts);
  spin_unlock(&clp->cl_lock);
 }
 put_cred(lo->plh_lc_cred);
 return ld->free_layout_hdr(lo);
}
