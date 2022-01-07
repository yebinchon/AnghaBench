
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct primes {unsigned long sz; int primes; } ;


 int expand_to_next_prime (unsigned long) ;
 int primes ;
 struct primes* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int slow_is_prime_number (unsigned long) ;
 int test_bit (unsigned long,int ) ;

bool is_prime_number(unsigned long x)
{
 const struct primes *p;
 bool result;

 rcu_read_lock();
 p = rcu_dereference(primes);
 while (x >= p->sz) {
  rcu_read_unlock();

  if (!expand_to_next_prime(x))
   return slow_is_prime_number(x);

  rcu_read_lock();
  p = rcu_dereference(primes);
 }
 result = test_bit(x, p->primes);
 rcu_read_unlock();

 return result;
}
