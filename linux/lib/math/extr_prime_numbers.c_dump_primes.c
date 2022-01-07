
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct primes {int sz; int * primes; int last; } ;


 int BITS_TO_LONGS (int ) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int bitmap_print_to_pagebuf (int,char*,int *,int ) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int pr_info (char*,int ,int ,int ,char*) ;
 int primes ;
 struct primes* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void dump_primes(void)
{
 const struct primes *p;
 char *buf;

 buf = kmalloc(PAGE_SIZE, GFP_KERNEL);

 rcu_read_lock();
 p = rcu_dereference(primes);

 if (buf)
  bitmap_print_to_pagebuf(1, buf, p->primes, p->sz);
 pr_info("primes.{last=%lu, .sz=%lu, .primes[]=...x%lx} = %s",
  p->last, p->sz, p->primes[BITS_TO_LONGS(p->sz) - 1], buf);

 rcu_read_unlock();

 kfree(buf);
}
