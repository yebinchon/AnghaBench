
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct page {int index; struct address_space* mapping; } ;
struct address_space {int i_pages; TYPE_1__* host; } ;
typedef int dax_entry_t ;
struct TYPE_11__ {int * xa; } ;
struct TYPE_10__ {int i_mode; } ;


 struct address_space* READ_ONCE (struct address_space*) ;
 scalar_t__ S_ISCHR (int ) ;
 int XA_STATE (TYPE_2__,int *,int ) ;
 scalar_t__ dax_is_locked (void*) ;
 int dax_lock_entry (TYPE_2__*,void*) ;
 int dax_mapping (struct address_space*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int wait_entry_unlocked (TYPE_2__*,void*) ;
 TYPE_2__ xas ;
 void* xas_load (TYPE_2__*) ;
 int xas_lock_irq (TYPE_2__*) ;
 int xas_set (TYPE_2__*,int ) ;
 int xas_unlock_irq (TYPE_2__*) ;

dax_entry_t dax_lock_page(struct page *page)
{
 XA_STATE(xas, ((void*)0), 0);
 void *entry;


 rcu_read_lock();
 for (;;) {
  struct address_space *mapping = READ_ONCE(page->mapping);

  entry = ((void*)0);
  if (!mapping || !dax_mapping(mapping))
   break;
  entry = (void *)~0UL;
  if (S_ISCHR(mapping->host->i_mode))
   break;

  xas.xa = &mapping->i_pages;
  xas_lock_irq(&xas);
  if (mapping != page->mapping) {
   xas_unlock_irq(&xas);
   continue;
  }
  xas_set(&xas, page->index);
  entry = xas_load(&xas);
  if (dax_is_locked(entry)) {
   rcu_read_unlock();
   wait_entry_unlocked(&xas, entry);
   rcu_read_lock();
   continue;
  }
  dax_lock_entry(&xas, entry);
  xas_unlock_irq(&xas);
  break;
 }
 rcu_read_unlock();
 return (dax_entry_t)entry;
}
