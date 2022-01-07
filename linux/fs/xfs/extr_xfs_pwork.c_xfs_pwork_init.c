
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_pwork_work_fn ;
struct xfs_pwork_ctl {int poll_wait; int nr_work; struct xfs_mount* mp; scalar_t__ error; int work_fn; int wq; } ;
struct xfs_mount {int dummy; } ;
struct TYPE_4__ {int pid; } ;
struct TYPE_3__ {unsigned int pwork_threads; } ;


 int ENOMEM ;
 int WQ_FREEZABLE ;
 int alloc_workqueue (char*,int ,unsigned int,char const*,int ) ;
 int atomic_set (int *,int ) ;
 TYPE_2__* current ;
 int init_waitqueue_head (int *) ;
 int trace_xfs_pwork_init (struct xfs_mount*,unsigned int,int ) ;
 TYPE_1__ xfs_globals ;

int
xfs_pwork_init(
 struct xfs_mount *mp,
 struct xfs_pwork_ctl *pctl,
 xfs_pwork_work_fn work_fn,
 const char *tag,
 unsigned int nr_threads)
{




 trace_xfs_pwork_init(mp, nr_threads, current->pid);

 pctl->wq = alloc_workqueue("%s-%d", WQ_FREEZABLE, nr_threads, tag,
   current->pid);
 if (!pctl->wq)
  return -ENOMEM;
 pctl->work_fn = work_fn;
 pctl->error = 0;
 pctl->mp = mp;
 atomic_set(&pctl->nr_work, 0);
 init_waitqueue_head(&pctl->poll_wait);

 return 0;
}
