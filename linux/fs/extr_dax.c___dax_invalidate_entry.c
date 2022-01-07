
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int nrexceptional; int i_pages; } ;
typedef int pgoff_t ;


 int PAGECACHE_TAG_DIRTY ;
 int PAGECACHE_TAG_TOWRITE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int XA_STATE (int ,int *,int ) ;
 int dax_disassociate_entry (void*,struct address_space*,int) ;
 void* get_unlocked_entry (int *,int ) ;
 int put_unlocked_entry (int *,void*) ;
 int xa_is_value (void*) ;
 int xas ;
 scalar_t__ xas_get_mark (int *,int ) ;
 int xas_lock_irq (int *) ;
 int xas_store (int *,int *) ;
 int xas_unlock_irq (int *) ;

__attribute__((used)) static int __dax_invalidate_entry(struct address_space *mapping,
       pgoff_t index, bool trunc)
{
 XA_STATE(xas, &mapping->i_pages, index);
 int ret = 0;
 void *entry;

 xas_lock_irq(&xas);
 entry = get_unlocked_entry(&xas, 0);
 if (!entry || WARN_ON_ONCE(!xa_is_value(entry)))
  goto out;
 if (!trunc &&
     (xas_get_mark(&xas, PAGECACHE_TAG_DIRTY) ||
      xas_get_mark(&xas, PAGECACHE_TAG_TOWRITE)))
  goto out;
 dax_disassociate_entry(entry, mapping, trunc);
 xas_store(&xas, ((void*)0));
 mapping->nrexceptional--;
 ret = 1;
out:
 put_unlocked_entry(&xas, entry);
 xas_unlock_irq(&xas);
 return ret;
}
