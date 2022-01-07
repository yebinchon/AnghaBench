
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iomode; } ;
struct pnfs_layout_segment {int pls_list; TYPE_1__ pls_range; int pls_flags; } ;
struct pnfs_layout_hdr {int plh_return_segs; } ;


 int NFS_LSEG_LAYOUTRETURN ;
 int list_move_tail (int *,int *) ;
 scalar_t__ pnfs_layout_is_valid (struct pnfs_layout_hdr*) ;
 int pnfs_set_plh_return_info (struct pnfs_layout_hdr*,int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static bool
pnfs_cache_lseg_for_layoutreturn(struct pnfs_layout_hdr *lo,
  struct pnfs_layout_segment *lseg)
{
 if (test_and_clear_bit(NFS_LSEG_LAYOUTRETURN, &lseg->pls_flags) &&
     pnfs_layout_is_valid(lo)) {
  pnfs_set_plh_return_info(lo, lseg->pls_range.iomode, 0);
  list_move_tail(&lseg->pls_list, &lo->plh_return_segs);
  return 1;
 }
 return 0;
}
