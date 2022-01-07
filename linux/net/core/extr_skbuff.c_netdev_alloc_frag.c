
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_frag_cache {int dummy; } ;


 int GFP_ATOMIC ;
 unsigned int SKB_DATA_ALIGN (unsigned int) ;
 void* __napi_alloc_frag (unsigned int,int ) ;
 scalar_t__ in_irq () ;
 scalar_t__ irqs_disabled () ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int netdev_alloc_cache ;
 void* page_frag_alloc (struct page_frag_cache*,unsigned int,int ) ;
 struct page_frag_cache* this_cpu_ptr (int *) ;

void *netdev_alloc_frag(unsigned int fragsz)
{
 struct page_frag_cache *nc;
 void *data;

 fragsz = SKB_DATA_ALIGN(fragsz);
 if (in_irq() || irqs_disabled()) {
  nc = this_cpu_ptr(&netdev_alloc_cache);
  data = page_frag_alloc(nc, fragsz, GFP_ATOMIC);
 } else {
  local_bh_disable();
  data = __napi_alloc_frag(fragsz, GFP_ATOMIC);
  local_bh_enable();
 }
 return data;
}
