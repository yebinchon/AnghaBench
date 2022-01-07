
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct task_struct* rq_task; } ;
struct svc_serv {int sv_nrthreads; int sv_nrpools; TYPE_1__* sv_ops; int sv_name; } ;
struct svc_rqst {struct svc_rqst* rq_task; } ;
struct svc_pool {int sp_id; } ;
struct TYPE_2__ {int svo_module; int svo_function; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int __module_get (int ) ;
 struct svc_pool* choose_pool (struct svc_serv*,struct svc_pool*,unsigned int*) ;
 struct task_struct* kthread_create_on_node (int ,struct task_struct*,int,char*,int ) ;
 int module_put (int ) ;
 int svc_exit_thread (struct task_struct*) ;
 int svc_pool_map_get_node (int ) ;
 int svc_pool_map_set_cpumask (struct task_struct*,int ) ;
 struct task_struct* svc_prepare_thread (struct svc_serv*,struct svc_pool*,int) ;
 int svc_sock_update_bufs (struct svc_serv*) ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static int
svc_start_kthreads(struct svc_serv *serv, struct svc_pool *pool, int nrservs)
{
 struct svc_rqst *rqstp;
 struct task_struct *task;
 struct svc_pool *chosen_pool;
 unsigned int state = serv->sv_nrthreads-1;
 int node;

 do {
  nrservs--;
  chosen_pool = choose_pool(serv, pool, &state);

  node = svc_pool_map_get_node(chosen_pool->sp_id);
  rqstp = svc_prepare_thread(serv, chosen_pool, node);
  if (IS_ERR(rqstp))
   return PTR_ERR(rqstp);

  __module_get(serv->sv_ops->svo_module);
  task = kthread_create_on_node(serv->sv_ops->svo_function, rqstp,
           node, "%s", serv->sv_name);
  if (IS_ERR(task)) {
   module_put(serv->sv_ops->svo_module);
   svc_exit_thread(rqstp);
   return PTR_ERR(task);
  }

  rqstp->rq_task = task;
  if (serv->sv_nrpools > 1)
   svc_pool_map_set_cpumask(task, chosen_pool->sp_id);

  svc_sock_update_bufs(serv);
  wake_up_process(task);
 } while (nrservs > 0);

 return 0;
}
