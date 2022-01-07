
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {int dummy; } ;


 int last_request ;
 struct regulatory_request* rcu_dereference_rtnl (int ) ;

__attribute__((used)) static struct regulatory_request *get_last_request(void)
{
 return rcu_dereference_rtnl(last_request);
}
