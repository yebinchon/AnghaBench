
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ns {int dummy; } ;


 int __aa_lookupn_ns (struct aa_ns*,char const*,size_t) ;
 struct aa_ns* aa_get_ns (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct aa_ns *aa_lookupn_ns(struct aa_ns *view, const char *name, size_t n)
{
 struct aa_ns *ns = ((void*)0);

 rcu_read_lock();
 ns = aa_get_ns(__aa_lookupn_ns(view, name, n));
 rcu_read_unlock();

 return ns;
}
