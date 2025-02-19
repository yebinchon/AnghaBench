
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_net {unsigned short nfs_callback_tcpport; unsigned short nfs_callback_tcpport6; } ;
struct TYPE_2__ {scalar_t__ ss_family; } ;
struct nfs_client {scalar_t__ cl_state; int cl_confirm; int cl_clientid; TYPE_1__ cl_addr; int cl_net; } ;
struct nfs4_setclientid_res {int confirm; int clientid; } ;
struct cred {int dummy; } ;


 scalar_t__ AF_INET6 ;
 int NFS4_CALLBACK ;
 struct nfs_net* net_generic (int ,int ) ;
 int nfs40_walk_client_list (struct nfs_client*,struct nfs_client**,struct cred const*) ;
 int nfs4_proc_setclientid (struct nfs_client*,int ,unsigned short,struct cred const*,struct nfs4_setclientid_res*) ;
 int nfs4_schedule_state_manager (struct nfs_client*) ;
 int nfs4_schedule_state_renewal (struct nfs_client*) ;
 int nfs_net_id ;

int nfs40_discover_server_trunking(struct nfs_client *clp,
       struct nfs_client **result,
       const struct cred *cred)
{
 struct nfs4_setclientid_res clid = {
  .clientid = clp->cl_clientid,
  .confirm = clp->cl_confirm,
 };
 struct nfs_net *nn = net_generic(clp->cl_net, nfs_net_id);
 unsigned short port;
 int status;

 port = nn->nfs_callback_tcpport;
 if (clp->cl_addr.ss_family == AF_INET6)
  port = nn->nfs_callback_tcpport6;

 status = nfs4_proc_setclientid(clp, NFS4_CALLBACK, port, cred, &clid);
 if (status != 0)
  goto out;
 clp->cl_clientid = clid.clientid;
 clp->cl_confirm = clid.confirm;

 status = nfs40_walk_client_list(clp, result, cred);
 if (status == 0) {


  nfs4_schedule_state_renewal(*result);


  if (clp->cl_state)
   nfs4_schedule_state_manager(clp);
 }
out:
 return status;
}
