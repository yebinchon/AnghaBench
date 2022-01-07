
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct rpc_create_args {int addrsize; char* servername; char const* nodename; int cred; int flags; int authflavor; int version; int * program; struct sockaddr* address; int protocol; struct net* net; } ;
struct rpc_clnt {int dummy; } ;
struct net {int dummy; } ;
typedef int sin ;


 int AF_INET ;
 int INADDR_LOOPBACK ;
 int NSM_VERSION ;
 int RPC_AUTH_NULL ;
 int RPC_CLNT_CREATE_NOPING ;
 int XPRT_TRANSPORT_TCP ;
 int current_cred () ;
 int htonl (int ) ;
 int nsm_program ;
 struct rpc_clnt* rpc_create (struct rpc_create_args*) ;

__attribute__((used)) static struct rpc_clnt *nsm_create(struct net *net, const char *nodename)
{
 struct sockaddr_in sin = {
  .sin_family = AF_INET,
  .sin_addr.s_addr = htonl(INADDR_LOOPBACK),
 };
 struct rpc_create_args args = {
  .net = net,
  .protocol = XPRT_TRANSPORT_TCP,
  .address = (struct sockaddr *)&sin,
  .addrsize = sizeof(sin),
  .servername = "rpc.statd",
  .nodename = nodename,
  .program = &nsm_program,
  .version = NSM_VERSION,
  .authflavor = RPC_AUTH_NULL,
  .flags = RPC_CLNT_CREATE_NOPING,
  .cred = current_cred(),
 };

 return rpc_create(&args);
}
