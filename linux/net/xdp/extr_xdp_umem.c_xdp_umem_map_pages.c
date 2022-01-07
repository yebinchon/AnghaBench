
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_umem {unsigned int npgs; TYPE_1__* pages; int * pgs; } ;
struct TYPE_2__ {void* addr; } ;


 int ENOMEM ;
 int PAGE_KERNEL ;
 scalar_t__ PageHighMem (int ) ;
 int VM_MAP ;
 void* page_address (int ) ;
 void* vmap (int *,int,int ,int ) ;
 int xdp_umem_unmap_pages (struct xdp_umem*) ;

__attribute__((used)) static int xdp_umem_map_pages(struct xdp_umem *umem)
{
 unsigned int i;
 void *addr;

 for (i = 0; i < umem->npgs; i++) {
  if (PageHighMem(umem->pgs[i]))
   addr = vmap(&umem->pgs[i], 1, VM_MAP, PAGE_KERNEL);
  else
   addr = page_address(umem->pgs[i]);

  if (!addr) {
   xdp_umem_unmap_pages(umem);
   return -ENOMEM;
  }

  umem->pages[i].addr = addr;
 }

 return 0;
}
