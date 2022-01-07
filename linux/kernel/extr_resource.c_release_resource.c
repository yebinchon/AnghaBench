
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;


 int __release_resource (struct resource*,int) ;
 int resource_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int release_resource(struct resource *old)
{
 int retval;

 write_lock(&resource_lock);
 retval = __release_resource(old, 1);
 write_unlock(&resource_lock);
 return retval;
}
