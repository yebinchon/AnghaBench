
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uncached_list {int lock; int head; } ;
struct rt6_info {int rt6i_uncached; struct uncached_list* rt6i_uncached_list; } ;


 int list_add_tail (int *,int *) ;
 struct uncached_list* raw_cpu_ptr (int *) ;
 int rt6_uncached_list ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rt6_uncached_list_add(struct rt6_info *rt)
{
 struct uncached_list *ul = raw_cpu_ptr(&rt6_uncached_list);

 rt->rt6i_uncached_list = ul;

 spin_lock_bh(&ul->lock);
 list_add_tail(&rt->rt6i_uncached, &ul->head);
 spin_unlock_bh(&ul->lock);
}
