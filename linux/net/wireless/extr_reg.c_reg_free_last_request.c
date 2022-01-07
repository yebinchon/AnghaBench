
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {int dummy; } ;


 struct regulatory_request core_request_world ;
 struct regulatory_request* get_last_request () ;
 int kfree_rcu (struct regulatory_request*,int ) ;
 int rcu_head ;

__attribute__((used)) static void reg_free_last_request(void)
{
 struct regulatory_request *lr = get_last_request();

 if (lr != &core_request_world && lr)
  kfree_rcu(lr, rcu_head);
}
