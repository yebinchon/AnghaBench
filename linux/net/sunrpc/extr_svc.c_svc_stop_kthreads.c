
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct svc_serv {int sv_nrthreads; } ;
struct svc_pool {int dummy; } ;


 struct task_struct* choose_victim (struct svc_serv*,struct svc_pool*,unsigned int*) ;
 int kthread_stop (struct task_struct*) ;

__attribute__((used)) static int
svc_stop_kthreads(struct svc_serv *serv, struct svc_pool *pool, int nrservs)
{
 struct task_struct *task;
 unsigned int state = serv->sv_nrthreads-1;


 do {
  task = choose_victim(serv, pool, &state);
  if (task == ((void*)0))
   break;
  kthread_stop(task);
  nrservs++;
 } while (nrservs < 0);
 return 0;
}
