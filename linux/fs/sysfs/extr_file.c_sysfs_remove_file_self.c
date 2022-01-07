
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kernfs_node* sd; } ;
struct kernfs_node {int dummy; } ;
struct attribute {int name; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 struct kernfs_node* kernfs_find_and_get (struct kernfs_node*,int ) ;
 int kernfs_put (struct kernfs_node*) ;
 int kernfs_remove_self (struct kernfs_node*) ;

bool sysfs_remove_file_self(struct kobject *kobj, const struct attribute *attr)
{
 struct kernfs_node *parent = kobj->sd;
 struct kernfs_node *kn;
 bool ret;

 kn = kernfs_find_and_get(parent, attr->name);
 if (WARN_ON_ONCE(!kn))
  return 0;

 ret = kernfs_remove_self(kn);

 kernfs_put(kn);
 return ret;
}
