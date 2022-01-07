
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_ulp_ops {int owner; } ;


 int CAP_NET_ADMIN ;
 scalar_t__ capable (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int request_module (char*,char const*) ;
 struct tcp_ulp_ops* tcp_ulp_find (char const*) ;
 int try_module_get (int ) ;

__attribute__((used)) static const struct tcp_ulp_ops *__tcp_ulp_find_autoload(const char *name)
{
 const struct tcp_ulp_ops *ulp = ((void*)0);

 rcu_read_lock();
 ulp = tcp_ulp_find(name);
 if (!ulp || !try_module_get(ulp->owner))
  ulp = ((void*)0);

 rcu_read_unlock();
 return ulp;
}
