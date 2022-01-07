
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_subversion {int list; TYPE_1__* rpc_ops; } ;
struct TYPE_2__ {size_t version; } ;


 int list_del (int *) ;
 int ** nfs_version ;
 int nfs_version_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void unregister_nfs_version(struct nfs_subversion *nfs)
{
 spin_lock(&nfs_version_lock);

 nfs_version[nfs->rpc_ops->version] = ((void*)0);
 list_del(&nfs->list);

 spin_unlock(&nfs_version_lock);
}
