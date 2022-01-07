
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct slot_map {scalar_t__ c; TYPE_1__ q; int map; int count; } ;


 int __set_bit (int,int ) ;
 int find_first_zero_bit (int ,int ) ;
 scalar_t__ likely (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wait_for_free (struct slot_map*) ;

__attribute__((used)) static int get(struct slot_map *m)
{
 int res = 0;
 spin_lock(&m->q.lock);
 if (unlikely(m->c <= 0))
  res = wait_for_free(m);
 if (likely(!res)) {
  m->c--;
  res = find_first_zero_bit(m->map, m->count);
  __set_bit(res, m->map);
 }
 spin_unlock(&m->q.lock);
 return res;
}
