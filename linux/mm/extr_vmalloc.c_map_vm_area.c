
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {scalar_t__ addr; } ;
struct page {int dummy; } ;
typedef int pgprot_t ;


 unsigned long get_vm_area_size (struct vm_struct*) ;
 int vmap_page_range (unsigned long,unsigned long,int ,struct page**) ;

int map_vm_area(struct vm_struct *area, pgprot_t prot, struct page **pages)
{
 unsigned long addr = (unsigned long)area->addr;
 unsigned long end = addr + get_vm_area_size(area);
 int err;

 err = vmap_page_range(addr, end, prot, pages);

 return err > 0 ? 0 : err;
}
