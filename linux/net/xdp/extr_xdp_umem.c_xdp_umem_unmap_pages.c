
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_umem {unsigned int npgs; TYPE_1__* pages; int * pgs; } ;
struct TYPE_2__ {int addr; } ;


 scalar_t__ PageHighMem (int ) ;
 int vunmap (int ) ;

__attribute__((used)) static void xdp_umem_unmap_pages(struct xdp_umem *umem)
{
 unsigned int i;

 for (i = 0; i < umem->npgs; i++)
  if (PageHighMem(umem->pgs[i]))
   vunmap(umem->pages[i].addr);
}
