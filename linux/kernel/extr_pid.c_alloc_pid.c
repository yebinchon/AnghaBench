
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upid {int nr; struct pid_namespace* ns; } ;
struct pid_namespace {int level; int pid_allocated; int pid_cachep; int idr; struct pid_namespace* parent; } ;
struct pid {int level; struct upid* numbers; int wait_pidfd; int * tasks; int count; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int EAGAIN ;
 int ENOMEM ;
 int ENOSPC ;
 struct pid* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int PIDNS_ADDING ;
 int PIDTYPE_MAX ;
 int RESERVED_PIDS ;
 int get_pid_ns (struct pid_namespace*) ;
 int idr_alloc_cyclic (int *,int *,int,int ,int ) ;
 int idr_get_cursor (int *) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int idr_remove (int *,int) ;
 int idr_replace (int *,struct pid*,int) ;
 int idr_set_cursor (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int is_child_reaper (struct pid*) ;
 struct pid* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct pid*) ;
 int pid_max ;
 scalar_t__ pid_ns_prepare_proc (struct pid_namespace*) ;
 int pidmap_lock ;
 int put_pid_ns (struct pid_namespace*) ;
 int refcount_set (int *,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int ) ;

struct pid *alloc_pid(struct pid_namespace *ns)
{
 struct pid *pid;
 enum pid_type type;
 int i, nr;
 struct pid_namespace *tmp;
 struct upid *upid;
 int retval = -ENOMEM;

 pid = kmem_cache_alloc(ns->pid_cachep, GFP_KERNEL);
 if (!pid)
  return ERR_PTR(retval);

 tmp = ns;
 pid->level = ns->level;

 for (i = ns->level; i >= 0; i--) {
  int pid_min = 1;

  idr_preload(GFP_KERNEL);
  spin_lock_irq(&pidmap_lock);





  if (idr_get_cursor(&tmp->idr) > RESERVED_PIDS)
   pid_min = RESERVED_PIDS;





  nr = idr_alloc_cyclic(&tmp->idr, ((void*)0), pid_min,
          pid_max, GFP_ATOMIC);
  spin_unlock_irq(&pidmap_lock);
  idr_preload_end();

  if (nr < 0) {
   retval = (nr == -ENOSPC) ? -EAGAIN : nr;
   goto out_free;
  }

  pid->numbers[i].nr = nr;
  pid->numbers[i].ns = tmp;
  tmp = tmp->parent;
 }

 if (unlikely(is_child_reaper(pid))) {
  if (pid_ns_prepare_proc(ns))
   goto out_free;
 }

 get_pid_ns(ns);
 refcount_set(&pid->count, 1);
 for (type = 0; type < PIDTYPE_MAX; ++type)
  INIT_HLIST_HEAD(&pid->tasks[type]);

 init_waitqueue_head(&pid->wait_pidfd);

 upid = pid->numbers + ns->level;
 spin_lock_irq(&pidmap_lock);
 if (!(ns->pid_allocated & PIDNS_ADDING))
  goto out_unlock;
 for ( ; upid >= pid->numbers; --upid) {

  idr_replace(&upid->ns->idr, pid, upid->nr);
  upid->ns->pid_allocated++;
 }
 spin_unlock_irq(&pidmap_lock);

 return pid;

out_unlock:
 spin_unlock_irq(&pidmap_lock);
 put_pid_ns(ns);

out_free:
 spin_lock_irq(&pidmap_lock);
 while (++i <= ns->level) {
  upid = pid->numbers + i;
  idr_remove(&upid->ns->idr, upid->nr);
 }


 if (ns->pid_allocated == PIDNS_ADDING)
  idr_set_cursor(&ns->idr, 0);

 spin_unlock_irq(&pidmap_lock);

 kmem_cache_free(ns->pid_cachep, pid);
 return ERR_PTR(retval);
}
