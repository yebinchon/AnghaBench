
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct kobject {int sd; } ;
struct kernfs_node {int mode; } ;
struct iattr {int ia_mode; int ia_valid; } ;
struct attribute {int name; } ;


 int ATTR_MODE ;
 int ENOENT ;
 int S_IALLUGO ;
 struct kernfs_node* kernfs_find_and_get (int ,int ) ;
 int kernfs_put (struct kernfs_node*) ;
 int kernfs_setattr (struct kernfs_node*,struct iattr*) ;

int sysfs_chmod_file(struct kobject *kobj, const struct attribute *attr,
       umode_t mode)
{
 struct kernfs_node *kn;
 struct iattr newattrs;
 int rc;

 kn = kernfs_find_and_get(kobj->sd, attr->name);
 if (!kn)
  return -ENOENT;

 newattrs.ia_mode = (mode & S_IALLUGO) | (kn->mode & ~S_IALLUGO);
 newattrs.ia_valid = ATTR_MODE;

 rc = kernfs_setattr(kn, &newattrs);

 kernfs_put(kn);
 return rc;
}
