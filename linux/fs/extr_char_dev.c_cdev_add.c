
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct cdev {unsigned int count; TYPE_1__ kobj; int dev; } ;
typedef int dev_t ;


 int cdev_map ;
 int exact_lock ;
 int exact_match ;
 int kobj_map (int ,int ,unsigned int,int *,int ,int ,struct cdev*) ;
 int kobject_get (int ) ;

int cdev_add(struct cdev *p, dev_t dev, unsigned count)
{
 int error;

 p->dev = dev;
 p->count = count;

 error = kobj_map(cdev_map, dev, count, ((void*)0),
    exact_match, exact_lock, p);
 if (error)
  return error;

 kobject_get(p->kobj.parent);

 return 0;
}
