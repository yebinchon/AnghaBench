
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ww_mutex {int dummy; } ;
struct stress {int nlocks; int work; scalar_t__ timeout; struct ww_mutex* locks; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int INIT_WORK (int *,void (*) (struct work_struct*)) ;
 unsigned int STRESS_INORDER ;
 unsigned int STRESS_ONE ;
 unsigned int STRESS_REORDER ;
 int flush_workqueue (int ) ;
 scalar_t__ jiffies ;
 int kfree (struct ww_mutex*) ;
 struct stress* kmalloc (int,int ) ;
 struct ww_mutex* kmalloc_array (int,int,int ) ;
 int queue_work (int ,int *) ;
 void stress_inorder_work (struct work_struct*) ;
 void stress_one_work (struct work_struct*) ;
 void stress_reorder_work (struct work_struct*) ;
 int wq ;
 int ww_class ;
 int ww_mutex_destroy (struct ww_mutex*) ;
 int ww_mutex_init (struct ww_mutex*,int *) ;

__attribute__((used)) static int stress(int nlocks, int nthreads, unsigned int flags)
{
 struct ww_mutex *locks;
 int n;

 locks = kmalloc_array(nlocks, sizeof(*locks), GFP_KERNEL);
 if (!locks)
  return -ENOMEM;

 for (n = 0; n < nlocks; n++)
  ww_mutex_init(&locks[n], &ww_class);

 for (n = 0; nthreads; n++) {
  struct stress *stress;
  void (*fn)(struct work_struct *work);

  fn = ((void*)0);
  switch (n & 3) {
  case 0:
   if (flags & STRESS_INORDER)
    fn = stress_inorder_work;
   break;
  case 1:
   if (flags & STRESS_REORDER)
    fn = stress_reorder_work;
   break;
  case 2:
   if (flags & STRESS_ONE)
    fn = stress_one_work;
   break;
  }

  if (!fn)
   continue;

  stress = kmalloc(sizeof(*stress), GFP_KERNEL);
  if (!stress)
   break;

  INIT_WORK(&stress->work, fn);
  stress->locks = locks;
  stress->nlocks = nlocks;
  stress->timeout = jiffies + 2*HZ;

  queue_work(wq, &stress->work);
  nthreads--;
 }

 flush_workqueue(wq);

 for (n = 0; n < nlocks; n++)
  ww_mutex_destroy(&locks[n]);
 kfree(locks);

 return 0;
}
