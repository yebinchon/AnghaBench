
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {struct list_head upper; } ;
struct net_device {TYPE_1__ adj_list; } ;


 int MAX_NEST_DEV ;
 struct net_device* __netdev_next_upper_dev (struct net_device*,struct list_head**,int*) ;

__attribute__((used)) static int __netdev_walk_all_upper_dev(struct net_device *dev,
           int (*fn)(struct net_device *dev,
       void *data),
           void *data)
{
 struct net_device *udev, *next, *now, *dev_stack[MAX_NEST_DEV + 1];
 struct list_head *niter, *iter, *iter_stack[MAX_NEST_DEV + 1];
 int ret, cur = 0;
 bool ignore;

 now = dev;
 iter = &dev->adj_list.upper;

 while (1) {
  if (now != dev) {
   ret = fn(now, data);
   if (ret)
    return ret;
  }

  next = ((void*)0);
  while (1) {
   udev = __netdev_next_upper_dev(now, &iter, &ignore);
   if (!udev)
    break;
   if (ignore)
    continue;

   next = udev;
   niter = &udev->adj_list.upper;
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
