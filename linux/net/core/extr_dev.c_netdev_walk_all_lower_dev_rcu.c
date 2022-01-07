
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {struct list_head lower; } ;
struct net_device {TYPE_1__ adj_list; } ;


 int MAX_NEST_DEV ;
 struct net_device* netdev_next_lower_dev_rcu (struct net_device*,struct list_head**) ;

int netdev_walk_all_lower_dev_rcu(struct net_device *dev,
      int (*fn)(struct net_device *dev,
         void *data),
      void *data)
{
 struct net_device *ldev, *next, *now, *dev_stack[MAX_NEST_DEV + 1];
 struct list_head *niter, *iter, *iter_stack[MAX_NEST_DEV + 1];
 int ret, cur = 0;

 now = dev;
 iter = &dev->adj_list.lower;

 while (1) {
  if (now != dev) {
   ret = fn(now, data);
   if (ret)
    return ret;
  }

  next = ((void*)0);
  while (1) {
   ldev = netdev_next_lower_dev_rcu(now, &iter);
   if (!ldev)
    break;

   next = ldev;
   niter = &ldev->adj_list.lower;
   dev_stack[cur] = now;
   iter_stack[cur++] = iter;
   break;
  }

  if (!next) {
   if (!cur)
    return 0;
   next = dev_stack[--cur];
   niter = iter_stack[cur];
  }

  now = next;
  iter = niter;
 }

 return 0;
}
