
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int nrexceptional; int i_pages; } ;
typedef int pgoff_t ;


 int XA_STATE (int ,int *,int ) ;
 int workingset_update_node ;
 int xas ;
 void* xas_load (int *) ;
 int xas_set_update (int *,int ) ;
 int xas_store (int *,int *) ;

__attribute__((used)) static inline void __clear_shadow_entry(struct address_space *mapping,
    pgoff_t index, void *entry)
{
 XA_STATE(xas, &mapping->i_pages, index);

 xas_set_update(&xas, workingset_update_node);
 if (xas_load(&xas) != entry)
  return;
 xas_store(&xas, ((void*)0));
 mapping->nrexceptional--;
}
