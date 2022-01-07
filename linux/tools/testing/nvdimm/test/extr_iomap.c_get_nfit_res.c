
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_test_resource {int dummy; } ;
typedef int resource_size_t ;


 struct nfit_test_resource* __get_nfit_res (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct nfit_test_resource *get_nfit_res(resource_size_t resource)
{
 struct nfit_test_resource *res;

 rcu_read_lock();
 res = __get_nfit_res(resource);
 rcu_read_unlock();

 return res;
}
