
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uncached_list {int lock; } ;
struct rtable {int rt_uncached; struct uncached_list* rt_uncached_list; } ;


 int list_del (int *) ;
 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rt_del_uncached_list(struct rtable *rt)
{
 if (!list_empty(&rt->rt_uncached)) {
  struct uncached_list *ul = rt->rt_uncached_list;

  spin_lock_bh(&ul->lock);
  list_del(&rt->rt_uncached);
  spin_unlock_bh(&ul->lock);
 }
}
