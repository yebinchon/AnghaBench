
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct primes {unsigned long last; int primes; } ;


 int expand_to_next_prime (unsigned long) ;
 unsigned long find_next_bit (int ,unsigned long,unsigned long) ;
 int primes ;
 struct primes* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 unsigned long slow_next_prime_number (unsigned long) ;

unsigned long next_prime_number(unsigned long x)
{
 const struct primes *p;

 rcu_read_lock();
 p = rcu_dereference(primes);
 while (x >= p->last) {
  rcu_read_unlock();

  if (!expand_to_next_prime(x))
   return slow_next_prime_number(x);

  rcu_read_lock();
  p = rcu_dereference(primes);
 }
 x = find_next_bit(p->primes, p->last, x + 1);
 rcu_read_unlock();

 return x;
}
