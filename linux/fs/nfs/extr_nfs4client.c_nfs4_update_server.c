
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xprt_create {size_t addrlen; char const* servername; struct sockaddr* dstaddr; struct net* net; int ident; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct rpc_clnt {int cl_timeout; } ;
struct nfs_server {struct nfs_client* nfs_client; int mig_status; struct rpc_clnt* client; } ;
struct nfs_client {int * cl_hostname; int cl_nconnect; int cl_minorversion; int cl_proto; } ;
struct net {int dummy; } ;
typedef int buf ;
typedef int address ;


 int EAFNOSUPPORT ;
 int GFP_KERNEL ;
 int INET6_ADDRSTRLEN ;
 int NFS_MIG_TSM_POSSIBLE ;
 int clear_bit (int ,int *) ;
 int * kstrdup (char const*,int ) ;
 int nfs4_set_client (struct nfs_server*,char const*,struct sockaddr*,size_t,char*,int ,int ,int ,int ,struct net*) ;
 int nfs_probe_destination (struct nfs_server*) ;
 int nfs_put_client (struct nfs_client*) ;
 int nfs_server_insert_lists (struct nfs_server*) ;
 int nfs_server_remove_lists (struct nfs_server*) ;
 int rpc_localaddr (struct rpc_clnt*,struct sockaddr*,int) ;
 scalar_t__ rpc_ntop (struct sockaddr*,char*,int) ;
 int rpc_switch_client_transport (struct rpc_clnt*,struct xprt_create*,int ) ;
 int set_bit (int ,int *) ;

int nfs4_update_server(struct nfs_server *server, const char *hostname,
         struct sockaddr *sap, size_t salen, struct net *net)
{
 struct nfs_client *clp = server->nfs_client;
 struct rpc_clnt *clnt = server->client;
 struct xprt_create xargs = {
  .ident = clp->cl_proto,
  .net = net,
  .dstaddr = sap,
  .addrlen = salen,
  .servername = hostname,
 };
 char buf[INET6_ADDRSTRLEN + 1];
 struct sockaddr_storage address;
 struct sockaddr *localaddr = (struct sockaddr *)&address;
 int error;

 error = rpc_switch_client_transport(clnt, &xargs, clnt->cl_timeout);
 if (error != 0)
  return error;

 error = rpc_localaddr(clnt, localaddr, sizeof(address));
 if (error != 0)
  return error;

 if (rpc_ntop(localaddr, buf, sizeof(buf)) == 0)
  return -EAFNOSUPPORT;

 nfs_server_remove_lists(server);
 set_bit(NFS_MIG_TSM_POSSIBLE, &server->mig_status);
 error = nfs4_set_client(server, hostname, sap, salen, buf,
    clp->cl_proto, clnt->cl_timeout,
    clp->cl_minorversion,
    clp->cl_nconnect, net);
 clear_bit(NFS_MIG_TSM_POSSIBLE, &server->mig_status);
 if (error != 0) {
  nfs_server_insert_lists(server);
  return error;
 }
 nfs_put_client(clp);

 if (server->nfs_client->cl_hostname == ((void*)0))
  server->nfs_client->cl_hostname = kstrdup(hostname, GFP_KERNEL);
 nfs_server_insert_lists(server);

 return nfs_probe_destination(server);
}
