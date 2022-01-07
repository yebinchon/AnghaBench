
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int (* poll ) (struct napi_struct*,int ) ;int state; } ;


 int NAPI_STATE_NPSVC ;
 int WARN_ONCE (int,char*,int (*) (struct napi_struct*,int )) ;
 int clear_bit (int ,int *) ;
 int stub1 (struct napi_struct*,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int trace_napi_poll (struct napi_struct*,int,int ) ;

__attribute__((used)) static void poll_one_napi(struct napi_struct *napi)
{
 int work;





 if (test_and_set_bit(NAPI_STATE_NPSVC, &napi->state))
  return;




 work = napi->poll(napi, 0);
 WARN_ONCE(work, "%pS exceeded budget in poll\n", napi->poll);
 trace_napi_poll(napi, work, 0);

 clear_bit(NAPI_STATE_NPSVC, &napi->state);
}
