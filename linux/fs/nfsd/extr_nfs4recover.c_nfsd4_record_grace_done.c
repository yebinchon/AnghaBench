
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_net {TYPE_1__* client_tracking_ops; } ;
struct TYPE_2__ {int (* grace_done ) (struct nfsd_net*) ;} ;


 int stub1 (struct nfsd_net*) ;

void
nfsd4_record_grace_done(struct nfsd_net *nn)
{
 if (nn->client_tracking_ops)
  nn->client_tracking_ops->grace_done(nn);
}
