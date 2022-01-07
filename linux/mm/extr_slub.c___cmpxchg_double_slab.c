
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {void* freelist; unsigned long counters; } ;
struct kmem_cache {int flags; int name; } ;


 int CMPXCHG_DOUBLE_FAIL ;
 int VM_BUG_ON (int) ;
 int __CMPXCHG_DOUBLE ;
 scalar_t__ cmpxchg_double (void**,unsigned long*,void*,unsigned long,void*,unsigned long) ;
 int cpu_relax () ;
 int irqs_disabled () ;
 int pr_info (char*,char const*,int ) ;
 int slab_lock (struct page*) ;
 int slab_unlock (struct page*) ;
 int stat (struct kmem_cache*,int ) ;

__attribute__((used)) static inline bool __cmpxchg_double_slab(struct kmem_cache *s, struct page *page,
  void *freelist_old, unsigned long counters_old,
  void *freelist_new, unsigned long counters_new,
  const char *n)
{
 VM_BUG_ON(!irqs_disabled());
 {
  slab_lock(page);
  if (page->freelist == freelist_old &&
     page->counters == counters_old) {
   page->freelist = freelist_new;
   page->counters = counters_new;
   slab_unlock(page);
   return 1;
  }
  slab_unlock(page);
 }

 cpu_relax();
 stat(s, CMPXCHG_DOUBLE_FAIL);





 return 0;
}
