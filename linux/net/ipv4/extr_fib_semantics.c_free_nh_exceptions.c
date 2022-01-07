
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnhe_hash_bucket {int fnhe_rth_output; int fnhe_rth_input; int fnhe_next; int chain; } ;
struct fib_nh_exception {int fnhe_rth_output; int fnhe_rth_input; int fnhe_next; int chain; } ;
struct fib_nh_common {int nhc_exceptions; } ;


 int FNHE_HASH_SIZE ;
 int kfree (struct fnhe_hash_bucket*) ;
 struct fnhe_hash_bucket* rcu_dereference_protected (int ,int) ;
 int rt_fibinfo_free (int *) ;

__attribute__((used)) static void free_nh_exceptions(struct fib_nh_common *nhc)
{
 struct fnhe_hash_bucket *hash;
 int i;

 hash = rcu_dereference_protected(nhc->nhc_exceptions, 1);
 if (!hash)
  return;
 for (i = 0; i < FNHE_HASH_SIZE; i++) {
  struct fib_nh_exception *fnhe;

  fnhe = rcu_dereference_protected(hash[i].chain, 1);
  while (fnhe) {
   struct fib_nh_exception *next;

   next = rcu_dereference_protected(fnhe->fnhe_next, 1);

   rt_fibinfo_free(&fnhe->fnhe_rth_input);
   rt_fibinfo_free(&fnhe->fnhe_rth_output);

   kfree(fnhe);

   fnhe = next;
  }
 }
 kfree(hash);
}
