
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kobj; } ;


 int ENOMEM ;
 int fs_kobj ;
 TYPE_1__* kset_create_and_add (char*,int *,int ) ;
 int kset_unregister (TYPE_1__*) ;
 int mlog_sys_init (TYPE_1__*) ;
 int o2cb_attr_group ;
 TYPE_1__* o2cb_kset ;
 int sysfs_create_group (int *,int *) ;

int o2cb_sys_init(void)
{
 int ret;

 o2cb_kset = kset_create_and_add("o2cb", ((void*)0), fs_kobj);
 if (!o2cb_kset)
  return -ENOMEM;

 ret = sysfs_create_group(&o2cb_kset->kobj, &o2cb_attr_group);
 if (ret)
  goto error;

 ret = mlog_sys_init(o2cb_kset);
 if (ret)
  goto error;
 return 0;
error:
 kset_unregister(o2cb_kset);
 return ret;
}
