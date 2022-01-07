
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_netns_client {int kobject; } ;
struct nfs_net {struct nfs_netns_client* nfs_client; } ;
struct net {int dummy; } ;


 int KOBJ_ADD ;
 int kobject_uevent (int *,int ) ;
 int nfs_client_kobj ;
 struct nfs_netns_client* nfs_netns_client_alloc (int ,struct net*) ;

void nfs_netns_sysfs_setup(struct nfs_net *netns, struct net *net)
{
 struct nfs_netns_client *clp;

 clp = nfs_netns_client_alloc(nfs_client_kobj, net);
 if (clp) {
  netns->nfs_client = clp;
  kobject_uevent(&clp->kobject, KOBJ_ADD);
 }
}
