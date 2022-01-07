
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_segment {int dummy; } ;
struct pnfs_layout_hdr {int dummy; } ;
struct list_head {int dummy; } ;


 int ff_lseg_merge ;
 int ff_lseg_range_is_after ;
 int pnfs_generic_layout_insert_lseg (struct pnfs_layout_hdr*,struct pnfs_layout_segment*,int ,int ,struct list_head*) ;

__attribute__((used)) static void
ff_layout_add_lseg(struct pnfs_layout_hdr *lo,
  struct pnfs_layout_segment *lseg,
  struct list_head *free_me)
{
 pnfs_generic_layout_insert_lseg(lo, lseg,
   ff_lseg_range_is_after,
   ff_lseg_merge,
   free_me);
}
