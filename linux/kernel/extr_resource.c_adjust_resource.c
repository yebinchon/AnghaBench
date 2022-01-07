
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int resource_size_t ;


 int __adjust_resource (struct resource*,int ,int ) ;
 int resource_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int adjust_resource(struct resource *res, resource_size_t start,
      resource_size_t size)
{
 int result;

 write_lock(&resource_lock);
 result = __adjust_resource(res, start, size);
 write_unlock(&resource_lock);
 return result;
}
