
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct primes {unsigned long last; unsigned long sz; int primes; } ;


 int BITS_PER_LONG ;
 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int __GFP_NOWARN ;
 int bitmap_copy (int ,int ,unsigned long) ;
 int bitmap_fill (int ,unsigned long) ;
 scalar_t__ bitmap_size (unsigned long) ;
 unsigned long clear_multiples (unsigned long,int ,unsigned long,unsigned long) ;
 unsigned long find_next_bit (int ,unsigned long,unsigned long) ;
 int kfree (struct primes*) ;
 int kfree_rcu (struct primes*,int ) ;
 struct primes* kmalloc (scalar_t__,int) ;
 int lock ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int primes ;
 int rcu ;
 int rcu_assign_pointer (int ,struct primes*) ;
 struct primes* rcu_dereference_protected (int ,int ) ;
 unsigned long round_up (unsigned long,int ) ;
 struct primes const small_primes ;

__attribute__((used)) static bool expand_to_next_prime(unsigned long x)
{
 const struct primes *p;
 struct primes *new;
 unsigned long sz, y;
 sz = 2 * x;
 if (sz < x)
  return 0;

 sz = round_up(sz, BITS_PER_LONG);
 new = kmalloc(sizeof(*new) + bitmap_size(sz),
        GFP_KERNEL | __GFP_NOWARN);
 if (!new)
  return 0;

 mutex_lock(&lock);
 p = rcu_dereference_protected(primes, lockdep_is_held(&lock));
 if (x < p->last) {
  kfree(new);
  goto unlock;
 }





 bitmap_fill(new->primes, sz);
 bitmap_copy(new->primes, p->primes, p->sz);
 for (y = 2UL; y < sz; y = find_next_bit(new->primes, sz, y + 1))
  new->last = clear_multiples(y, new->primes, p->sz, sz);
 new->sz = sz;

 BUG_ON(new->last <= x);

 rcu_assign_pointer(primes, new);
 if (p != &small_primes)
  kfree_rcu((struct primes *)p, rcu);

unlock:
 mutex_unlock(&lock);
 return 1;
}
