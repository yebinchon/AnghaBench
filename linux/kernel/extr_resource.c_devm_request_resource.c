
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int name; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*,struct resource*,int ,struct resource*) ;
 int devm_resource_release ;
 int devres_add (struct device*,struct resource**) ;
 struct resource** devres_alloc (int ,int,int ) ;
 int devres_free (struct resource**) ;
 struct resource* request_resource_conflict (struct resource*,struct resource*) ;

int devm_request_resource(struct device *dev, struct resource *root,
     struct resource *new)
{
 struct resource *conflict, **ptr;

 ptr = devres_alloc(devm_resource_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 *ptr = new;

 conflict = request_resource_conflict(root, new);
 if (conflict) {
  dev_err(dev, "resource collision: %pR conflicts with %s %pR\n",
   new, conflict->name, conflict);
  devres_free(ptr);
  return -EBUSY;
 }

 devres_add(dev, ptr);
 return 0;
}
