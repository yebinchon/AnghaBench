
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct worker_pool {int cpu; int id; int worker_ida; int lock; TYPE_1__* attrs; int node; } ;
struct worker {int id; int task; TYPE_2__* pool; } ;
typedef int id_buf ;
struct TYPE_4__ {int nr_workers; } ;
struct TYPE_3__ {scalar_t__ nice; int cpumask; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 struct worker* alloc_worker (int ) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct worker*) ;
 int kthread_bind_mask (int ,int ) ;
 int kthread_create_on_node (int ,struct worker*,int ,char*,char*) ;
 int set_user_nice (int ,scalar_t__) ;
 int snprintf (char*,int,char*,int,int,...) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up_process (int ) ;
 int worker_attach_to_pool (struct worker*,struct worker_pool*) ;
 int worker_enter_idle (struct worker*) ;
 int worker_thread ;

__attribute__((used)) static struct worker *create_worker(struct worker_pool *pool)
{
 struct worker *worker = ((void*)0);
 int id = -1;
 char id_buf[16];


 id = ida_simple_get(&pool->worker_ida, 0, 0, GFP_KERNEL);
 if (id < 0)
  goto fail;

 worker = alloc_worker(pool->node);
 if (!worker)
  goto fail;

 worker->id = id;

 if (pool->cpu >= 0)
  snprintf(id_buf, sizeof(id_buf), "%d:%d%s", pool->cpu, id,
    pool->attrs->nice < 0 ? "H" : "");
 else
  snprintf(id_buf, sizeof(id_buf), "u%d:%d", pool->id, id);

 worker->task = kthread_create_on_node(worker_thread, worker, pool->node,
           "kworker/%s", id_buf);
 if (IS_ERR(worker->task))
  goto fail;

 set_user_nice(worker->task, pool->attrs->nice);
 kthread_bind_mask(worker->task, pool->attrs->cpumask);


 worker_attach_to_pool(worker, pool);


 spin_lock_irq(&pool->lock);
 worker->pool->nr_workers++;
 worker_enter_idle(worker);
 wake_up_process(worker->task);
 spin_unlock_irq(&pool->lock);

 return worker;

fail:
 if (id >= 0)
  ida_simple_remove(&pool->worker_ida, id);
 kfree(worker);
 return ((void*)0);
}
