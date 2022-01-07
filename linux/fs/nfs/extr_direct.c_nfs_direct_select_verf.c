
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_writeverf {int dummy; } ;
struct TYPE_3__ {int nbuckets; TYPE_2__* buckets; } ;
struct nfs_direct_req {TYPE_1__ ds_cinfo; struct nfs_writeverf verf; } ;
struct nfs_client {int dummy; } ;
struct TYPE_4__ {struct nfs_writeverf direct_verf; } ;


 int WARN_ON_ONCE (int) ;

__attribute__((used)) static struct nfs_writeverf *
nfs_direct_select_verf(struct nfs_direct_req *dreq,
         struct nfs_client *ds_clp,
         int commit_idx)
{
 struct nfs_writeverf *verfp = &dreq->verf;
 return verfp;
}
