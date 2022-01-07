
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_netns_client {int kobject; } ;
struct nfs_net {struct nfs_netns_client* nfs_client; } ;


 int KOBJ_REMOVE ;
 int kobject_del (int *) ;
 int kobject_put (int *) ;
 int kobject_uevent (int *,int ) ;

void nfs_netns_sysfs_destroy(struct nfs_net *netns)
{
 struct nfs_netns_client *clp = netns->nfs_client;

 if (clp) {
  kobject_uevent(&clp->kobject, KOBJ_REMOVE);
  kobject_del(&clp->kobject);
  kobject_put(&clp->kobject);
  netns->nfs_client = ((void*)0);
 }
}
