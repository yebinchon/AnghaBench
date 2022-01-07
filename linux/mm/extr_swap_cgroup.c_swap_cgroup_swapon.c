
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_cgroup_ctrl {unsigned long length; int * map; int lock; } ;


 unsigned long DIV_ROUND_UP (unsigned long,int ) ;
 int ENOMEM ;
 int SC_PER_PAGE ;
 int do_swap_account ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int spin_lock_init (int *) ;
 struct swap_cgroup_ctrl* swap_cgroup_ctrl ;
 int swap_cgroup_mutex ;
 scalar_t__ swap_cgroup_prepare (int) ;
 int vfree (void*) ;
 void* vzalloc (unsigned long) ;

int swap_cgroup_swapon(int type, unsigned long max_pages)
{
 void *array;
 unsigned long array_size;
 unsigned long length;
 struct swap_cgroup_ctrl *ctrl;

 if (!do_swap_account)
  return 0;

 length = DIV_ROUND_UP(max_pages, SC_PER_PAGE);
 array_size = length * sizeof(void *);

 array = vzalloc(array_size);
 if (!array)
  goto nomem;

 ctrl = &swap_cgroup_ctrl[type];
 mutex_lock(&swap_cgroup_mutex);
 ctrl->length = length;
 ctrl->map = array;
 spin_lock_init(&ctrl->lock);
 if (swap_cgroup_prepare(type)) {

  ctrl->map = ((void*)0);
  ctrl->length = 0;
  mutex_unlock(&swap_cgroup_mutex);
  vfree(array);
  goto nomem;
 }
 mutex_unlock(&swap_cgroup_mutex);

 return 0;
nomem:
 pr_info("couldn't allocate enough memory for swap_cgroup\n");
 pr_info("swap_cgroup can be disabled by swapaccount=0 boot option\n");
 return -ENOMEM;
}
