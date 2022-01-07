
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;


 int EBUSY ;
 struct resource* request_resource_conflict (struct resource*,struct resource*) ;

int request_resource(struct resource *root, struct resource *new)
{
 struct resource *conflict;

 conflict = request_resource_conflict(root, new);
 return conflict ? -EBUSY : 0;
}
