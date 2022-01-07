
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resv_map {int dummy; } ;
struct inode {long i_blocks; int i_lock; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {int dummy; } ;


 long blocks_per_huge_page (struct hstate*) ;
 struct hstate* hstate_inode (struct inode*) ;
 long hugepage_subpool_put_pages (struct hugepage_subpool*,long) ;
 int hugetlb_acct_memory (struct hstate*,long) ;
 struct resv_map* inode_resv_map (struct inode*) ;
 long region_del (struct resv_map*,long,long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct hugepage_subpool* subpool_inode (struct inode*) ;

long hugetlb_unreserve_pages(struct inode *inode, long start, long end,
        long freed)
{
 struct hstate *h = hstate_inode(inode);
 struct resv_map *resv_map = inode_resv_map(inode);
 long chg = 0;
 struct hugepage_subpool *spool = subpool_inode(inode);
 long gbl_reserve;





 if (resv_map) {
  chg = region_del(resv_map, start, end);





  if (chg < 0)
   return chg;
 }

 spin_lock(&inode->i_lock);
 inode->i_blocks -= (blocks_per_huge_page(h) * freed);
 spin_unlock(&inode->i_lock);





 gbl_reserve = hugepage_subpool_put_pages(spool, (chg - freed));
 hugetlb_acct_memory(h, -gbl_reserve);

 return 0;
}
