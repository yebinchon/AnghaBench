
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sockaddr {int dummy; } ;
struct rpc_timeout {int dummy; } ;
struct nfs_server {int flags; int options; struct nfs_client* nfs_client; int port; int mig_status; int cred; } ;
struct nfs_client_initdata {char const* hostname; size_t const addrlen; char const* ip_addr; int proto; scalar_t__ minorversion; unsigned int nconnect; int init_flags; int cred; struct rpc_timeout const* timeparms; struct net* net; int * nfs_mod; struct sockaddr const* addr; } ;
struct nfs_client {int cl_res_state; } ;
struct net {int dummy; } ;


 int ELOOP ;
 scalar_t__ IS_ERR (struct nfs_client*) ;
 int NFS_CS_CHECK_LEASE_TIME ;
 int NFS_CS_MIGRATION ;
 int NFS_CS_NORESVPORT ;
 int NFS_CS_TSM_POSSIBLE ;
 int NFS_MIG_TSM_POSSIBLE ;
 int NFS_MOUNT_NORESVPORT ;
 int NFS_OPTION_MIGRATION ;
 int PTR_ERR (struct nfs_client*) ;
 int XPRT_TRANSPORT_TCP ;
 struct nfs_client* nfs_get_client (struct nfs_client_initdata*) ;
 int nfs_put_client (struct nfs_client*) ;
 int nfs_v4 ;
 int rpc_get_port (struct sockaddr const*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int nfs4_set_client(struct nfs_server *server,
  const char *hostname,
  const struct sockaddr *addr,
  const size_t addrlen,
  const char *ip_addr,
  int proto, const struct rpc_timeout *timeparms,
  u32 minorversion, unsigned int nconnect,
  struct net *net)
{
 struct nfs_client_initdata cl_init = {
  .hostname = hostname,
  .addr = addr,
  .addrlen = addrlen,
  .ip_addr = ip_addr,
  .nfs_mod = &nfs_v4,
  .proto = proto,
  .minorversion = minorversion,
  .net = net,
  .timeparms = timeparms,
  .cred = server->cred,
 };
 struct nfs_client *clp;

 if (minorversion > 0 && proto == XPRT_TRANSPORT_TCP)
  cl_init.nconnect = nconnect;
 if (server->flags & NFS_MOUNT_NORESVPORT)
  set_bit(NFS_CS_NORESVPORT, &cl_init.init_flags);
 if (server->options & NFS_OPTION_MIGRATION)
  set_bit(NFS_CS_MIGRATION, &cl_init.init_flags);
 if (test_bit(NFS_MIG_TSM_POSSIBLE, &server->mig_status))
  set_bit(NFS_CS_TSM_POSSIBLE, &cl_init.init_flags);
 server->port = rpc_get_port(addr);


 clp = nfs_get_client(&cl_init);
 if (IS_ERR(clp))
  return PTR_ERR(clp);

 if (server->nfs_client == clp) {
  nfs_put_client(clp);
  return -ELOOP;
 }
 set_bit(NFS_CS_CHECK_LEASE_TIME, &clp->cl_res_state);

 server->nfs_client = clp;
 return 0;
}
