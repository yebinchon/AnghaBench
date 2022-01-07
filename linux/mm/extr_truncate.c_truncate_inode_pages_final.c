
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {unsigned long nrpages; unsigned long nrexceptional; int i_pages; } ;


 int mapping_set_exiting (struct address_space*) ;
 int smp_rmb () ;
 int truncate_inode_pages (struct address_space*,int ) ;
 int xa_lock_irq (int *) ;
 int xa_unlock_irq (int *) ;

void truncate_inode_pages_final(struct address_space *mapping)
{
 unsigned long nrexceptional;
 unsigned long nrpages;
 mapping_set_exiting(mapping);






 nrpages = mapping->nrpages;
 smp_rmb();
 nrexceptional = mapping->nrexceptional;

 if (nrpages || nrexceptional) {






  xa_lock_irq(&mapping->i_pages);
  xa_unlock_irq(&mapping->i_pages);
 }





 truncate_inode_pages(mapping, 0);
}
