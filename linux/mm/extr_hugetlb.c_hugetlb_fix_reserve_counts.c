
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {int dummy; } ;


 struct hstate* hstate_inode (struct inode*) ;
 long hugepage_subpool_get_pages (struct hugepage_subpool*,int) ;
 int hugetlb_acct_memory (struct hstate*,int) ;
 struct hugepage_subpool* subpool_inode (struct inode*) ;

void hugetlb_fix_reserve_counts(struct inode *inode)
{
 struct hugepage_subpool *spool = subpool_inode(inode);
 long rsv_adjust;

 rsv_adjust = hugepage_subpool_get_pages(spool, 1);
 if (rsv_adjust) {
  struct hstate *h = hstate_inode(inode);

  hugetlb_acct_memory(h, 1);
 }
}
