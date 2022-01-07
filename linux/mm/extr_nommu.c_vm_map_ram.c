
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pgprot_t ;


 int BUG () ;

void *vm_map_ram(struct page **pages, unsigned int count, int node, pgprot_t prot)
{
 BUG();
 return ((void*)0);
}
