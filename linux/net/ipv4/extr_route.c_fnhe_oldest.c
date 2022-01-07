
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnhe_hash_bucket {int chain; } ;
struct fib_nh_exception {int fnhe_stamp; int fnhe_next; } ;


 int fnhe_flush_routes (struct fib_nh_exception*) ;
 struct fib_nh_exception* rcu_dereference (int ) ;
 scalar_t__ time_before (int ,int ) ;

__attribute__((used)) static struct fib_nh_exception *fnhe_oldest(struct fnhe_hash_bucket *hash)
{
 struct fib_nh_exception *fnhe, *oldest;

 oldest = rcu_dereference(hash->chain);
 for (fnhe = rcu_dereference(oldest->fnhe_next); fnhe;
      fnhe = rcu_dereference(fnhe->fnhe_next)) {
  if (time_before(fnhe->fnhe_stamp, oldest->fnhe_stamp))
   oldest = fnhe;
 }
 fnhe_flush_routes(oldest);
 return oldest;
}
