
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int fs_kobj ;
 int * kset_create_and_add (char*,int *,int ) ;
 int kset_unregister (int *) ;
 int nfs_client_kobj ;
 int * nfs_client_kset ;
 int nfs_netns_object_alloc (char*,int *,int *) ;

int nfs_sysfs_init(void)
{
 nfs_client_kset = kset_create_and_add("nfs", ((void*)0), fs_kobj);
 if (!nfs_client_kset)
  return -ENOMEM;
 nfs_client_kobj = nfs_netns_object_alloc("net", nfs_client_kset, ((void*)0));
 if (!nfs_client_kobj) {
  kset_unregister(nfs_client_kset);
  nfs_client_kset = ((void*)0);
  return -ENOMEM;
 }
 return 0;
}
