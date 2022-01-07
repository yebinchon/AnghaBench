
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; struct resource* sibling; struct resource* child; } ;
typedef scalar_t__ resource_size_t ;


 int read_lock (int *) ;
 int read_unlock (int *) ;
 int resource_lock ;

struct resource *lookup_resource(struct resource *root, resource_size_t start)
{
 struct resource *res;

 read_lock(&resource_lock);
 for (res = root->child; res; res = res->sibling) {
  if (res->start == start)
   break;
 }
 read_unlock(&resource_lock);

 return res;
}
