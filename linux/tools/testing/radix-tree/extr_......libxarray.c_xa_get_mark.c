
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xa_mark_t ;
struct xarray {int dummy; } ;


 int XA_STATE (int ,struct xarray*,unsigned long) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int xa_is_node (void*) ;
 int xa_to_node (void*) ;
 int xas ;
 void* xas_descend (int *,int ) ;
 scalar_t__ xas_get_mark (int *,int ) ;
 void* xas_start (int *) ;

bool xa_get_mark(struct xarray *xa, unsigned long index, xa_mark_t mark)
{
 XA_STATE(xas, xa, index);
 void *entry;

 rcu_read_lock();
 entry = xas_start(&xas);
 while (xas_get_mark(&xas, mark)) {
  if (!xa_is_node(entry))
   goto found;
  entry = xas_descend(&xas, xa_to_node(entry));
 }
 rcu_read_unlock();
 return 0;
 found:
 rcu_read_unlock();
 return 1;
}
