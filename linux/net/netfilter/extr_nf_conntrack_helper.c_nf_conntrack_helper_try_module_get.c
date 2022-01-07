
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nf_conntrack_helper {int me; int refcnt; } ;


 struct nf_conntrack_helper* __nf_conntrack_helper_find (char const*,int ,int ) ;
 int module_put (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int refcount_inc_not_zero (int *) ;
 scalar_t__ request_module (char*,char const*) ;
 int try_module_get (int ) ;

struct nf_conntrack_helper *
nf_conntrack_helper_try_module_get(const char *name, u16 l3num, u8 protonum)
{
 struct nf_conntrack_helper *h;

 rcu_read_lock();

 h = __nf_conntrack_helper_find(name, l3num, protonum);
 if (h != ((void*)0) && !try_module_get(h->me))
  h = ((void*)0);
 if (h != ((void*)0) && !refcount_inc_not_zero(&h->refcnt)) {
  module_put(h->me);
  h = ((void*)0);
 }

 rcu_read_unlock();

 return h;
}
