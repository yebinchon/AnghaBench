
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct fnhe_hash_bucket {int chain; } ;
struct fib_nh_exception {scalar_t__ fnhe_daddr; scalar_t__ fnhe_expires; int fnhe_next; } ;
struct fib_nh_common {int nhc_exceptions; } ;
typedef scalar_t__ __be32 ;


 size_t fnhe_hashfun (scalar_t__) ;
 int ip_del_fnhe (struct fib_nh_common*,scalar_t__) ;
 int jiffies ;
 void* rcu_dereference (int ) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static struct fib_nh_exception *find_exception(struct fib_nh_common *nhc,
            __be32 daddr)
{
 struct fnhe_hash_bucket *hash = rcu_dereference(nhc->nhc_exceptions);
 struct fib_nh_exception *fnhe;
 u32 hval;

 if (!hash)
  return ((void*)0);

 hval = fnhe_hashfun(daddr);

 for (fnhe = rcu_dereference(hash[hval].chain); fnhe;
      fnhe = rcu_dereference(fnhe->fnhe_next)) {
  if (fnhe->fnhe_daddr == daddr) {
   if (fnhe->fnhe_expires &&
       time_after(jiffies, fnhe->fnhe_expires)) {
    ip_del_fnhe(nhc, daddr);
    break;
   }
   return fnhe;
  }
 }
 return ((void*)0);
}
