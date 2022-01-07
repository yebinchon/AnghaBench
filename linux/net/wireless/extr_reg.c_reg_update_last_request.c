
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {int dummy; } ;


 struct regulatory_request* get_last_request () ;
 int last_request ;
 int rcu_assign_pointer (int ,struct regulatory_request*) ;
 int reg_free_last_request () ;

__attribute__((used)) static void reg_update_last_request(struct regulatory_request *request)
{
 struct regulatory_request *lr;

 lr = get_last_request();
 if (lr == request)
  return;

 reg_free_last_request();
 rcu_assign_pointer(last_request, request);
}
