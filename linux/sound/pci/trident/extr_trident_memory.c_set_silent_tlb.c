
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; scalar_t__ area; } ;
struct TYPE_4__ {TYPE_1__ silent_page; } ;
struct snd_trident {TYPE_2__ tlb; } ;


 int UNIT_PAGES ;
 int __set_tlb_bus (struct snd_trident*,int,unsigned long,int ) ;

__attribute__((used)) static inline void set_silent_tlb(struct snd_trident *trident, int page)
{
 int i;
 page *= UNIT_PAGES;
 for (i = 0; i < UNIT_PAGES; i++, page++)
  __set_tlb_bus(trident, page, (unsigned long)trident->tlb.silent_page.area, trident->tlb.silent_page.addr);
}
