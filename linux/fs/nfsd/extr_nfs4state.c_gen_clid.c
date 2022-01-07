
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_net {int clientid_counter; int boot_time; } ;
struct TYPE_2__ {scalar_t__ cl_id; int cl_boot; } ;
struct nfs4_client {TYPE_1__ cl_clientid; } ;


 int gen_confirm (struct nfs4_client*,struct nfsd_net*) ;

__attribute__((used)) static void gen_clid(struct nfs4_client *clp, struct nfsd_net *nn)
{
 clp->cl_clientid.cl_boot = nn->boot_time;
 clp->cl_clientid.cl_id = nn->clientid_counter++;
 gen_confirm(clp, nn);
}
