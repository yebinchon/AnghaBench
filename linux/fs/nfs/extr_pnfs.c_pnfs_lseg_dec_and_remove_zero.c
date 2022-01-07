
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_segment {int pls_list; int pls_layout; int pls_refcount; } ;
struct list_head {int dummy; } ;


 int list_add (int *,struct list_head*) ;
 int pnfs_layout_remove_lseg (int ,struct pnfs_layout_segment*) ;
 int refcount_dec_and_test (int *) ;

__attribute__((used)) static bool pnfs_lseg_dec_and_remove_zero(struct pnfs_layout_segment *lseg,
  struct list_head *tmp_list)
{
 if (!refcount_dec_and_test(&lseg->pls_refcount))
  return 0;
 pnfs_layout_remove_lseg(lseg->pls_layout, lseg);
 list_add(&lseg->pls_list, tmp_list);
 return 1;
}
