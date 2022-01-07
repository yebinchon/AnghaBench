
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kernfs_node* sd; } ;
struct kernfs_node {int dummy; } ;
struct attribute {int name; } ;


 int kernfs_remove_by_name_ns (struct kernfs_node*,int ,void const*) ;

void sysfs_remove_file_ns(struct kobject *kobj, const struct attribute *attr,
     const void *ns)
{
 struct kernfs_node *parent = kobj->sd;

 kernfs_remove_by_name_ns(parent, attr->name, ns);
}
