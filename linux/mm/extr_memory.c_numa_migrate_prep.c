
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int NUMA_HINT_FAULTS ;
 int NUMA_HINT_FAULTS_LOCAL ;
 int TNF_FAULT_LOCAL ;
 int count_vm_numa_event (int ) ;
 int get_page (struct page*) ;
 int mpol_misplaced (struct page*,struct vm_area_struct*,unsigned long) ;
 int numa_node_id () ;

__attribute__((used)) static int numa_migrate_prep(struct page *page, struct vm_area_struct *vma,
    unsigned long addr, int page_nid,
    int *flags)
{
 get_page(page);

 count_vm_numa_event(NUMA_HINT_FAULTS);
 if (page_nid == numa_node_id()) {
  count_vm_numa_event(NUMA_HINT_FAULTS_LOCAL);
  *flags |= TNF_FAULT_LOCAL;
 }

 return mpol_misplaced(page, vma, addr);
}
