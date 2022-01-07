
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct svc_serv {int sv_nrthreads; } ;
struct svc_pool {int dummy; } ;


 int SIGINT ;
 struct task_struct* choose_victim (struct svc_serv*,struct svc_pool*,unsigned int*) ;
 int send_sig (int ,struct task_struct*,int) ;

__attribute__((used)) static int
svc_signal_kthreads(struct svc_serv *serv, struct svc_pool *pool, int nrservs)
{
 struct task_struct *task;
 unsigned int state = serv->sv_nrthreads-1;


 do {
  task = choose_victim(serv, pool, &state);
  if (task == ((void*)0))
   break;
  send_sig(SIGINT, task, 1);
  nrservs++;
 } while (nrservs < 0);

 return 0;
}
