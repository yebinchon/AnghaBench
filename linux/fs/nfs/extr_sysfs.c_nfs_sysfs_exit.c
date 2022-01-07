
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kobject_put (int ) ;
 int kset_unregister (int ) ;
 int nfs_client_kobj ;
 int nfs_client_kset ;

void nfs_sysfs_exit(void)
{
 kobject_put(nfs_client_kobj);
 kset_unregister(nfs_client_kset);
}
