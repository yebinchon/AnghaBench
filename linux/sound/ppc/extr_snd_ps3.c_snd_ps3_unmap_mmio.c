
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mapped_mmio_vaddr; } ;


 int iounmap (int *) ;
 TYPE_1__ the_card ;

__attribute__((used)) static void snd_ps3_unmap_mmio(void)
{
 iounmap(the_card.mapped_mmio_vaddr);
 the_card.mapped_mmio_vaddr = ((void*)0);
}
