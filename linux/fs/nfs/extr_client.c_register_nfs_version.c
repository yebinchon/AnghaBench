
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_subversion {int rpc_vers; TYPE_1__* rpc_ops; int list; } ;
struct TYPE_2__ {size_t version; } ;


 int list_add (int *,int *) ;
 int * nfs_version ;
 int nfs_version_lock ;
 int nfs_versions ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void register_nfs_version(struct nfs_subversion *nfs)
{
 spin_lock(&nfs_version_lock);

 list_add(&nfs->list, &nfs_versions);
 nfs_version[nfs->rpc_ops->version] = nfs->rpc_vers;

 spin_unlock(&nfs_version_lock);
}
