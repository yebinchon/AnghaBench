
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_segment {int pls_flags; int pls_list; } ;
struct pnfs_layout_hdr {int plh_flags; int plh_outstanding; int plh_segs; int plh_refcount; } ;


 int NFS_LAYOUT_BULK_RECALL ;
 int NFS_LAYOUT_INVALID_STID ;
 int NFS_LAYOUT_RETURN ;
 int NFS_LAYOUT_RETURN_REQUESTED ;
 int NFS_LSEG_LAYOUTRETURN ;
 int NFS_LSEG_VALID ;
 int WARN_ON (scalar_t__) ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int refcount_dec (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
pnfs_layout_remove_lseg(struct pnfs_layout_hdr *lo,
  struct pnfs_layout_segment *lseg)
{
 WARN_ON(test_bit(NFS_LSEG_VALID, &lseg->pls_flags));
 list_del_init(&lseg->pls_list);

 refcount_dec(&lo->plh_refcount);
 if (test_bit(NFS_LSEG_LAYOUTRETURN, &lseg->pls_flags))
  return;
 if (list_empty(&lo->plh_segs) &&
     !test_bit(NFS_LAYOUT_RETURN_REQUESTED, &lo->plh_flags) &&
     !test_bit(NFS_LAYOUT_RETURN, &lo->plh_flags)) {
  if (atomic_read(&lo->plh_outstanding) == 0)
   set_bit(NFS_LAYOUT_INVALID_STID, &lo->plh_flags);
  clear_bit(NFS_LAYOUT_BULK_RECALL, &lo->plh_flags);
 }
}
