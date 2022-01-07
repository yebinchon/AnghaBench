
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {int dummy; } ;


 struct regulatory_request core_request_world ;
 struct regulatory_request* get_last_request () ;
 int kfree (struct regulatory_request*) ;

__attribute__((used)) static void reg_free_request(struct regulatory_request *request)
{
 if (request == &core_request_world)
  return;

 if (request != get_last_request())
  kfree(request);
}
