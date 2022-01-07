
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_segment {int pls_flags; } ;
struct list_head {int dummy; } ;


 int NFS_LSEG_LAYOUTCOMMIT ;
 int NFS_LSEG_LAYOUTRETURN ;
 int NFS_LSEG_ROC ;
 int NFS_LSEG_VALID ;
 int clear_bit (int ,int *) ;
 int pnfs_lseg_dec_and_remove_zero (struct pnfs_layout_segment*,struct list_head*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
pnfs_clear_lseg_state(struct pnfs_layout_segment *lseg,
  struct list_head *free_me)
{
 clear_bit(NFS_LSEG_ROC, &lseg->pls_flags);
 clear_bit(NFS_LSEG_LAYOUTRETURN, &lseg->pls_flags);
 if (test_and_clear_bit(NFS_LSEG_VALID, &lseg->pls_flags))
  pnfs_lseg_dec_and_remove_zero(lseg, free_me);
 if (test_and_clear_bit(NFS_LSEG_LAYOUTCOMMIT, &lseg->pls_flags))
  pnfs_lseg_dec_and_remove_zero(lseg, free_me);
}
