
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct rpc_timeout {int dummy; } ;
struct nfs_server {int flags; int cred; struct nfs_client* nfs_client; } ;
struct nfs_client_initdata {int addrlen; int proto; char* hostname; int nconnect; int init_flags; int cred; struct rpc_timeout* timeparms; int net; int * nfs_mod; int ip_addr; int nodename; struct sockaddr const* addr; } ;
struct nfs_client {int cl_nconnect; int cl_net; int cl_ipaddr; TYPE_1__* cl_rpcclient; } ;
typedef int buf ;
struct TYPE_2__ {int cl_nodename; } ;


 int EINVAL ;
 struct nfs_client* ERR_PTR (int ) ;
 int INET6_ADDRSTRLEN ;
 int NFS_CS_NORESVPORT ;
 int NFS_MOUNT_NORESVPORT ;
 int XPRT_TRANSPORT_TCP ;
 struct nfs_client* nfs_get_client (struct nfs_client_initdata*) ;
 int nfs_init_timeout_values (struct rpc_timeout*,int,unsigned int,unsigned int) ;
 int nfs_v3 ;
 scalar_t__ rpc_ntop (struct sockaddr const*,char*,int) ;
 int set_bit (int ,int *) ;

struct nfs_client *nfs3_set_ds_client(struct nfs_server *mds_srv,
  const struct sockaddr *ds_addr, int ds_addrlen,
  int ds_proto, unsigned int ds_timeo, unsigned int ds_retrans)
{
 struct rpc_timeout ds_timeout;
 struct nfs_client *mds_clp = mds_srv->nfs_client;
 struct nfs_client_initdata cl_init = {
  .addr = ds_addr,
  .addrlen = ds_addrlen,
  .nodename = mds_clp->cl_rpcclient->cl_nodename,
  .ip_addr = mds_clp->cl_ipaddr,
  .nfs_mod = &nfs_v3,
  .proto = ds_proto,
  .net = mds_clp->cl_net,
  .timeparms = &ds_timeout,
  .cred = mds_srv->cred,
 };
 struct nfs_client *clp;
 char buf[INET6_ADDRSTRLEN + 1];


 if (rpc_ntop(ds_addr, buf, sizeof(buf)) <= 0)
  return ERR_PTR(-EINVAL);
 cl_init.hostname = buf;

 if (mds_clp->cl_nconnect > 1 && ds_proto == XPRT_TRANSPORT_TCP)
  cl_init.nconnect = mds_clp->cl_nconnect;

 if (mds_srv->flags & NFS_MOUNT_NORESVPORT)
  set_bit(NFS_CS_NORESVPORT, &cl_init.init_flags);


 nfs_init_timeout_values(&ds_timeout, ds_proto, ds_timeo, ds_retrans);
 clp = nfs_get_client(&cl_init);

 return clp;
}
