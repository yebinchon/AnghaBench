
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;


 int kfree (struct resource*) ;
 int release_resource (struct resource*) ;

__attribute__((used)) static void release_memory_resource(struct resource *res)
{
 if (!res)
  return;
 release_resource(res);
 kfree(res);
}
