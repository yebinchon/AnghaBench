
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct mtype {scalar_t__ elements; TYPE_1__ gc; int members; struct ip_set* set; } ;
struct ip_set {int timeout; int lock; int elements; int dsize; } ;


 int HZ ;
 int IPSET_GC_PERIOD (int ) ;
 int add_timer (TYPE_1__*) ;
 int clear_bit (scalar_t__,int ) ;
 int ext_timeout (void*,struct ip_set*) ;
 struct mtype* from_timer (int ,struct timer_list*,int ) ;
 int gc ;
 void* get_ext (struct ip_set*,struct mtype*,scalar_t__) ;
 int ip_set_ext_destroy (struct ip_set*,void*) ;
 scalar_t__ ip_set_timeout_expired (int ) ;
 scalar_t__ jiffies ;
 struct mtype* map ;
 scalar_t__ mtype_gc_test (scalar_t__,struct mtype*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
mtype_gc(struct timer_list *t)
{
 struct mtype *map = from_timer(map, t, gc);
 struct ip_set *set = map->set;
 void *x;
 u32 id;




 spin_lock_bh(&set->lock);
 for (id = 0; id < map->elements; id++)
  if (mtype_gc_test(id, map, set->dsize)) {
   x = get_ext(set, map, id);
   if (ip_set_timeout_expired(ext_timeout(x, set))) {
    clear_bit(id, map->members);
    ip_set_ext_destroy(set, x);
    set->elements--;
   }
  }
 spin_unlock_bh(&set->lock);

 map->gc.expires = jiffies + IPSET_GC_PERIOD(set->timeout) * HZ;
 add_timer(&map->gc);
}
