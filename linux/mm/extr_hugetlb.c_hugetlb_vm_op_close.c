
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_end; int vm_start; } ;
struct resv_map {int refs; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {int dummy; } ;


 int HPAGE_RESV_OWNER ;
 struct hstate* hstate_vma (struct vm_area_struct*) ;
 long hugepage_subpool_put_pages (struct hugepage_subpool*,unsigned long) ;
 int hugetlb_acct_memory (struct hstate*,long) ;
 int is_vma_resv_set (struct vm_area_struct*,int ) ;
 int kref_put (int *,int ) ;
 unsigned long region_count (struct resv_map*,unsigned long,unsigned long) ;
 int resv_map_release ;
 struct hugepage_subpool* subpool_vma (struct vm_area_struct*) ;
 unsigned long vma_hugecache_offset (struct hstate*,struct vm_area_struct*,int ) ;
 struct resv_map* vma_resv_map (struct vm_area_struct*) ;

__attribute__((used)) static void hugetlb_vm_op_close(struct vm_area_struct *vma)
{
 struct hstate *h = hstate_vma(vma);
 struct resv_map *resv = vma_resv_map(vma);
 struct hugepage_subpool *spool = subpool_vma(vma);
 unsigned long reserve, start, end;
 long gbl_reserve;

 if (!resv || !is_vma_resv_set(vma, HPAGE_RESV_OWNER))
  return;

 start = vma_hugecache_offset(h, vma, vma->vm_start);
 end = vma_hugecache_offset(h, vma, vma->vm_end);

 reserve = (end - start) - region_count(resv, start, end);

 kref_put(&resv->refs, resv_map_release);

 if (reserve) {




  gbl_reserve = hugepage_subpool_put_pages(spool, reserve);
  hugetlb_acct_memory(h, -gbl_reserve);
 }
}
