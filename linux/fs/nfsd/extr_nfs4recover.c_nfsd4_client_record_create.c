
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_net {TYPE_1__* client_tracking_ops; } ;
struct nfs4_client {int net; } ;
struct TYPE_2__ {int (* create ) (struct nfs4_client*) ;} ;


 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;
 int stub1 (struct nfs4_client*) ;

void
nfsd4_client_record_create(struct nfs4_client *clp)
{
 struct nfsd_net *nn = net_generic(clp->net, nfsd_net_id);

 if (nn->client_tracking_ops)
  nn->client_tracking_ops->create(clp);
}
