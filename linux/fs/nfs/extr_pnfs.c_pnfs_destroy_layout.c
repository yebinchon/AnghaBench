
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnfs_layout_hdr {int dummy; } ;
struct TYPE_2__ {int i_lock; } ;
struct nfs_inode {TYPE_1__ vfs_inode; struct pnfs_layout_hdr* layout; } ;


 int LIST_HEAD (int ) ;
 int NFS_LAYOUT_RO_FAILED ;
 int NFS_LAYOUT_RW_FAILED ;
 int nfs_commit_inode (TYPE_1__*,int ) ;
 int pnfs_free_lseg_list (int *) ;
 int pnfs_get_layout_hdr (struct pnfs_layout_hdr*) ;
 int pnfs_layout_clear_fail_bit (struct pnfs_layout_hdr*,int ) ;
 int pnfs_mark_layout_stateid_invalid (struct pnfs_layout_hdr*,int *) ;
 int pnfs_put_layout_hdr (struct pnfs_layout_hdr*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tmp_list ;

void
pnfs_destroy_layout(struct nfs_inode *nfsi)
{
 struct pnfs_layout_hdr *lo;
 LIST_HEAD(tmp_list);

 spin_lock(&nfsi->vfs_inode.i_lock);
 lo = nfsi->layout;
 if (lo) {
  pnfs_get_layout_hdr(lo);
  pnfs_mark_layout_stateid_invalid(lo, &tmp_list);
  pnfs_layout_clear_fail_bit(lo, NFS_LAYOUT_RO_FAILED);
  pnfs_layout_clear_fail_bit(lo, NFS_LAYOUT_RW_FAILED);
  spin_unlock(&nfsi->vfs_inode.i_lock);
  pnfs_free_lseg_list(&tmp_list);
  nfs_commit_inode(&nfsi->vfs_inode, 0);
  pnfs_put_layout_hdr(lo);
 } else
  spin_unlock(&nfsi->vfs_inode.i_lock);
}
