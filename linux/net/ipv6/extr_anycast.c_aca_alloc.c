
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct ifacaddr6 {int aca_users; int aca_refcnt; int aca_tstamp; int aca_cstamp; int aca_addr_lst; struct fib6_info* aca_rt; struct in6_addr aca_addr; } ;
struct fib6_info {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_HLIST_NODE (int *) ;
 int fib6_info_hold (struct fib6_info*) ;
 int jiffies ;
 struct ifacaddr6* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static struct ifacaddr6 *aca_alloc(struct fib6_info *f6i,
       const struct in6_addr *addr)
{
 struct ifacaddr6 *aca;

 aca = kzalloc(sizeof(*aca), GFP_ATOMIC);
 if (!aca)
  return ((void*)0);

 aca->aca_addr = *addr;
 fib6_info_hold(f6i);
 aca->aca_rt = f6i;
 INIT_HLIST_NODE(&aca->aca_addr_lst);
 aca->aca_users = 1;

 aca->aca_cstamp = aca->aca_tstamp = jiffies;
 refcount_set(&aca->aca_refcnt, 1);

 return aca;
}
