
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct address_space {int i_pages; } ;
typedef scalar_t__ pgoff_t ;
struct TYPE_4__ {scalar_t__ xa_index; } ;


 int XA_STATE (TYPE_1__,int *,scalar_t__) ;
 scalar_t__ xa_is_value (void*) ;
 TYPE_1__ xas ;
 void* xas_next (TYPE_1__*) ;

pgoff_t page_cache_next_miss(struct address_space *mapping,
        pgoff_t index, unsigned long max_scan)
{
 XA_STATE(xas, &mapping->i_pages, index);

 while (max_scan--) {
  void *entry = xas_next(&xas);
  if (!entry || xa_is_value(entry))
   break;
  if (xas.xa_index == 0)
   break;
 }

 return xas.xa_index;
}
