
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;
struct item {int rcu_head; } ;


 int call_rcu (int *,int ) ;
 int item_free_rcu ;
 int item_sanity (struct item*,unsigned long) ;
 struct item* xa_erase (struct xarray*,unsigned long) ;

int item_delete_rcu(struct xarray *xa, unsigned long index)
{
 struct item *item = xa_erase(xa, index);

 if (item) {
  item_sanity(item, index);
  call_rcu(&item->rcu_head, item_free_rcu);
  return 1;
 }
 return 0;
}
