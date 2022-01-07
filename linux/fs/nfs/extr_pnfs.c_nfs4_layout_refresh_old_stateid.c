
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct pnfs_layout_range {int length; int offset; int iomode; } ;
struct TYPE_10__ {int seqid; } ;
struct pnfs_layout_hdr {TYPE_4__ plh_stateid; } ;
struct inode {int i_lock; } ;
struct TYPE_9__ {int seqid; } ;
typedef TYPE_1__ nfs4_stateid ;
struct TYPE_11__ {struct pnfs_layout_hdr* layout; } ;


 int EBUSY ;
 int IOMODE_ANY ;
 int LIST_HEAD (int ) ;
 int NFS4_MAX_UINT64 ;
 TYPE_8__* NFS_I (struct inode*) ;
 int head ;
 int nfs4_stateid_is_newer (TYPE_4__*,TYPE_1__*) ;
 scalar_t__ nfs4_stateid_match_other (TYPE_1__*,TYPE_4__*) ;
 int nfs4_stateid_seqid_inc (TYPE_1__*) ;
 int pnfs_free_lseg_list (int *) ;
 scalar_t__ pnfs_layout_is_valid (struct pnfs_layout_hdr*) ;
 int pnfs_mark_matching_lsegs_return (struct pnfs_layout_hdr*,int *,struct pnfs_layout_range*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool nfs4_layout_refresh_old_stateid(nfs4_stateid *dst,
  struct pnfs_layout_range *dst_range,
  struct inode *inode)
{
 struct pnfs_layout_hdr *lo;
 struct pnfs_layout_range range = {
  .iomode = IOMODE_ANY,
  .offset = 0,
  .length = NFS4_MAX_UINT64,
 };
 bool ret = 0;
 LIST_HEAD(head);
 int err;

 spin_lock(&inode->i_lock);
 lo = NFS_I(inode)->layout;
 if (lo && pnfs_layout_is_valid(lo) &&
     nfs4_stateid_match_other(dst, &lo->plh_stateid)) {

  if (!nfs4_stateid_is_newer(&lo->plh_stateid, dst)) {
   nfs4_stateid_seqid_inc(dst);
   ret = 1;
   goto out;
  }

  err = pnfs_mark_matching_lsegs_return(lo, &head, &range, 0);
  if (err != -EBUSY) {
   dst->seqid = lo->plh_stateid.seqid;
   *dst_range = range;
   ret = 1;
  }
 }
out:
 spin_unlock(&inode->i_lock);
 pnfs_free_lseg_list(&head);
 return ret;
}
