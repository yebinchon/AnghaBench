
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int i_pages; } ;
typedef int pgoff_t ;


 int __clear_shadow_entry (struct address_space*,int ,void*) ;
 int xa_lock_irq (int *) ;
 int xa_unlock_irq (int *) ;

__attribute__((used)) static void clear_shadow_entry(struct address_space *mapping, pgoff_t index,
          void *entry)
{
 xa_lock_irq(&mapping->i_pages);
 __clear_shadow_entry(mapping, index, entry);
 xa_unlock_irq(&mapping->i_pages);
}
