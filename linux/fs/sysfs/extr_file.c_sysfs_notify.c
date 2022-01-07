
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kernfs_node* sd; } ;
struct kernfs_node {int dummy; } ;


 struct kernfs_node* kernfs_find_and_get (struct kernfs_node*,char const*) ;
 int kernfs_get (struct kernfs_node*) ;
 int kernfs_notify (struct kernfs_node*) ;
 int kernfs_put (struct kernfs_node*) ;

void sysfs_notify(struct kobject *kobj, const char *dir, const char *attr)
{
 struct kernfs_node *kn = kobj->sd, *tmp;

 if (kn && dir)
  kn = kernfs_find_and_get(kn, dir);
 else
  kernfs_get(kn);

 if (kn && attr) {
  tmp = kernfs_find_and_get(kn, attr);
  kernfs_put(kn);
  kn = tmp;
 }

 if (kn) {
  kernfs_notify(kn);
  kernfs_put(kn);
 }
}
