
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct attribute_group {int dummy; } ;
typedef int hda_nid_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kobject_add (struct kobject*,struct kobject*,char*,int ) ;
 int kobject_init (struct kobject*,int *) ;
 int kobject_put (struct kobject*) ;
 struct kobject* kzalloc (int,int ) ;
 int sysfs_create_group (struct kobject*,struct attribute_group const*) ;
 int widget_ktype ;

__attribute__((used)) static int add_widget_node(struct kobject *parent, hda_nid_t nid,
      const struct attribute_group *group,
      struct kobject **res)
{
 struct kobject *kobj = kzalloc(sizeof(*kobj), GFP_KERNEL);
 int err;

 if (!kobj)
  return -ENOMEM;
 kobject_init(kobj, &widget_ktype);
 err = kobject_add(kobj, parent, "%02x", nid);
 if (err < 0)
  return err;
 err = sysfs_create_group(kobj, group);
 if (err < 0) {
  kobject_put(kobj);
  return err;
 }

 *res = kobj;
 return 0;
}
