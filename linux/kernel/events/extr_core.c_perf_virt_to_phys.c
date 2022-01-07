
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct TYPE_2__ {int * mm; } ;


 int PAGE_SIZE ;
 int TASK_SIZE ;
 int VMALLOC_END ;
 int VMALLOC_START ;
 int __get_user_pages_fast (int,int,int ,struct page**) ;
 TYPE_1__* current ;
 int page_to_phys (struct page*) ;
 int put_page (struct page*) ;
 scalar_t__ virt_addr_valid (void*) ;
 scalar_t__ virt_to_phys (void*) ;

__attribute__((used)) static u64 perf_virt_to_phys(u64 virt)
{
 u64 phys_addr = 0;
 struct page *p = ((void*)0);

 if (!virt)
  return 0;

 if (virt >= TASK_SIZE) {

  if (virt_addr_valid((void *)(uintptr_t)virt) &&
      !(virt >= VMALLOC_START && virt < VMALLOC_END))
   phys_addr = (u64)virt_to_phys((void *)(uintptr_t)virt);
 } else {







  if ((current->mm != ((void*)0)) &&
      (__get_user_pages_fast(virt, 1, 0, &p) == 1))
   phys_addr = page_to_phys(p) + virt % PAGE_SIZE;

  if (p)
   put_page(p);
 }

 return phys_addr;
}
