
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int nfs_client; int pnfs_curr_ld; } ;
struct nfs4_deviceid {int dummy; } ;
struct nfs4_deviceid_node {int ref; struct nfs4_deviceid deviceid; scalar_t__ flags; int nfs_client; int ld; int tmpnode; int node; } ;


 int INIT_HLIST_NODE (int *) ;
 int atomic_set (int *,int) ;

void
nfs4_init_deviceid_node(struct nfs4_deviceid_node *d, struct nfs_server *server,
   const struct nfs4_deviceid *id)
{
 INIT_HLIST_NODE(&d->node);
 INIT_HLIST_NODE(&d->tmpnode);
 d->ld = server->pnfs_curr_ld;
 d->nfs_client = server->nfs_client;
 d->flags = 0;
 d->deviceid = *id;
 atomic_set(&d->ref, 1);
}
