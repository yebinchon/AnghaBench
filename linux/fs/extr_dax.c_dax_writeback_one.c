
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_state {unsigned long xa_index; } ;
struct dax_device {int dummy; } ;
struct address_space {int host; } ;


 int EIO ;
 int PAGECACHE_TAG_DIRTY ;
 int PAGECACHE_TAG_TOWRITE ;
 unsigned long PAGE_SIZE ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int dax_entry_mkclean (struct address_space*,unsigned long,unsigned long) ;
 unsigned long dax_entry_order (void*) ;
 int dax_flush (struct dax_device*,int ,unsigned long) ;
 scalar_t__ dax_is_empty_entry (void*) ;
 int dax_is_locked (void*) ;
 scalar_t__ dax_is_zero_entry (void*) ;
 int dax_lock_entry (struct xa_state*,void*) ;
 scalar_t__ dax_to_pfn (void*) ;
 int dax_wake_entry (struct xa_state*,void*,int) ;
 void* get_unlocked_entry (struct xa_state*,int ) ;
 int page_address (int ) ;
 int pfn_to_page (unsigned long) ;
 int put_unlocked_entry (struct xa_state*,void*) ;
 int trace_dax_writeback_one (int ,unsigned long,unsigned long) ;
 scalar_t__ unlikely (int ) ;
 int xa_is_value (void*) ;
 int xas_clear_mark (struct xa_state*,int ) ;
 int xas_get_mark (struct xa_state*,int ) ;
 int xas_lock_irq (struct xa_state*) ;
 int xas_reset (struct xa_state*) ;
 int xas_store (struct xa_state*,void*) ;
 int xas_unlock_irq (struct xa_state*) ;

__attribute__((used)) static int dax_writeback_one(struct xa_state *xas, struct dax_device *dax_dev,
  struct address_space *mapping, void *entry)
{
 unsigned long pfn, index, count;
 long ret = 0;





 if (WARN_ON(!xa_is_value(entry)))
  return -EIO;

 if (unlikely(dax_is_locked(entry))) {
  void *old_entry = entry;

  entry = get_unlocked_entry(xas, 0);


  if (!entry || WARN_ON_ONCE(!xa_is_value(entry)))
   goto put_unlocked;





  if (dax_to_pfn(old_entry) != dax_to_pfn(entry))
   goto put_unlocked;
  if (WARN_ON_ONCE(dax_is_empty_entry(entry) ||
     dax_is_zero_entry(entry))) {
   ret = -EIO;
   goto put_unlocked;
  }


  if (!xas_get_mark(xas, PAGECACHE_TAG_TOWRITE))
   goto put_unlocked;
 }


 dax_lock_entry(xas, entry);
 xas_clear_mark(xas, PAGECACHE_TAG_TOWRITE);
 xas_unlock_irq(xas);
 pfn = dax_to_pfn(entry);
 count = 1UL << dax_entry_order(entry);
 index = xas->xa_index & ~(count - 1);

 dax_entry_mkclean(mapping, index, pfn);
 dax_flush(dax_dev, page_address(pfn_to_page(pfn)), count * PAGE_SIZE);






 xas_reset(xas);
 xas_lock_irq(xas);
 xas_store(xas, entry);
 xas_clear_mark(xas, PAGECACHE_TAG_DIRTY);
 dax_wake_entry(xas, entry, 0);

 trace_dax_writeback_one(mapping->host, index, count);
 return ret;

 put_unlocked:
 put_unlocked_entry(xas, entry);
 return ret;
}
