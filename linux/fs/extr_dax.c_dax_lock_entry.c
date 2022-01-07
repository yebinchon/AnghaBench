
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_state {int dummy; } ;


 unsigned long DAX_LOCKED ;
 int xa_mk_value (unsigned long) ;
 unsigned long xa_to_value (void*) ;
 void* xas_store (struct xa_state*,int ) ;

__attribute__((used)) static void *dax_lock_entry(struct xa_state *xas, void *entry)
{
 unsigned long v = xa_to_value(entry);
 return xas_store(xas, xa_mk_value(v | DAX_LOCKED));
}
