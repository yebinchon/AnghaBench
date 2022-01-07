
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_hdr {int plh_flags; int plh_lc_cred; struct inode* plh_inode; int plh_bulk_destroy; int plh_return_segs; int plh_segs; int plh_layouts; int plh_refcount; } ;
struct nfs_open_context {int cred; } ;
struct inode {int dummy; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int NFS_LAYOUT_INVALID_STID ;
 int get_cred (int ) ;
 struct pnfs_layout_hdr* pnfs_alloc_layout_hdr (struct inode*,int ) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static struct pnfs_layout_hdr *
alloc_init_layout_hdr(struct inode *ino,
        struct nfs_open_context *ctx,
        gfp_t gfp_flags)
{
 struct pnfs_layout_hdr *lo;

 lo = pnfs_alloc_layout_hdr(ino, gfp_flags);
 if (!lo)
  return ((void*)0);
 refcount_set(&lo->plh_refcount, 1);
 INIT_LIST_HEAD(&lo->plh_layouts);
 INIT_LIST_HEAD(&lo->plh_segs);
 INIT_LIST_HEAD(&lo->plh_return_segs);
 INIT_LIST_HEAD(&lo->plh_bulk_destroy);
 lo->plh_inode = ino;
 lo->plh_lc_cred = get_cred(ctx->cred);
 lo->plh_flags |= 1 << NFS_LAYOUT_INVALID_STID;
 return lo;
}
