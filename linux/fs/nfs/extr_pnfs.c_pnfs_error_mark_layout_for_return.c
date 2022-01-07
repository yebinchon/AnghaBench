
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iomode; } ;
struct pnfs_layout_segment {TYPE_1__ pls_range; } ;
struct pnfs_layout_range {int iomode; int length; int offset; } ;
struct pnfs_layout_hdr {int plh_return_segs; } ;
struct inode {int i_lock; } ;
typedef int nfs4_stateid ;
typedef enum pnfs_iomode { ____Placeholder_pnfs_iomode } pnfs_iomode ;
struct TYPE_4__ {struct pnfs_layout_hdr* layout; } ;


 int EBUSY ;
 int NFS4_MAX_UINT64 ;
 TYPE_2__* NFS_I (struct inode*) ;
 int nfs_commit_inode (struct inode*,int ) ;
 int pnfs_layout_is_valid (struct pnfs_layout_hdr*) ;
 int pnfs_mark_matching_lsegs_return (struct pnfs_layout_hdr*,int *,struct pnfs_layout_range*,int ) ;
 int pnfs_prepare_layoutreturn (struct pnfs_layout_hdr*,int *,int*) ;
 int pnfs_send_layoutreturn (struct pnfs_layout_hdr*,int *,int,int) ;
 int pnfs_set_plh_return_info (struct pnfs_layout_hdr*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pnfs_error_mark_layout_for_return(struct inode *inode,
           struct pnfs_layout_segment *lseg)
{
 struct pnfs_layout_hdr *lo = NFS_I(inode)->layout;
 struct pnfs_layout_range range = {
  .iomode = lseg->pls_range.iomode,
  .offset = 0,
  .length = NFS4_MAX_UINT64,
 };
 bool return_now = 0;

 spin_lock(&inode->i_lock);
 if (!pnfs_layout_is_valid(lo)) {
  spin_unlock(&inode->i_lock);
  return;
 }
 pnfs_set_plh_return_info(lo, range.iomode, 0);





 if (pnfs_mark_matching_lsegs_return(lo, &lo->plh_return_segs, &range, 0) != -EBUSY) {
  nfs4_stateid stateid;
  enum pnfs_iomode iomode;

  return_now = pnfs_prepare_layoutreturn(lo, &stateid, &iomode);
  spin_unlock(&inode->i_lock);
  if (return_now)
   pnfs_send_layoutreturn(lo, &stateid, iomode, 0);
 } else {
  spin_unlock(&inode->i_lock);
  nfs_commit_inode(inode, 0);
 }
}
