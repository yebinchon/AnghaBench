
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunrpc_net {int * rpcb_local_clnt4; } ;
struct sockaddr {int sa_family; } ;
struct rpcbind_args {char const* r_netid; int r_owner; int const r_vers; int const r_prog; } ;
struct rpc_message {struct rpcbind_args* rpc_argp; } ;
struct net {int dummy; } ;




 int EAFNOSUPPORT ;
 int EPROTONOSUPPORT ;
 int RPCB_OWNER_STRING ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int rpcb_register_inet4 (struct sunrpc_net*,struct sockaddr const*,struct rpc_message*) ;
 int rpcb_register_inet6 (struct sunrpc_net*,struct sockaddr const*,struct rpc_message*) ;
 int rpcb_unregister_all_protofamilies (struct sunrpc_net*,struct rpc_message*) ;
 int sunrpc_net_id ;

int rpcb_v4_register(struct net *net, const u32 program, const u32 version,
       const struct sockaddr *address, const char *netid)
{
 struct rpcbind_args map = {
  .r_prog = program,
  .r_vers = version,
  .r_netid = netid,
  .r_owner = RPCB_OWNER_STRING,
 };
 struct rpc_message msg = {
  .rpc_argp = &map,
 };
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);

 if (sn->rpcb_local_clnt4 == ((void*)0))
  return -EPROTONOSUPPORT;

 if (address == ((void*)0))
  return rpcb_unregister_all_protofamilies(sn, &msg);

 switch (address->sa_family) {
 case 129:
  return rpcb_register_inet4(sn, address, &msg);
 case 128:
  return rpcb_register_inet6(sn, address, &msg);
 }

 return -EAFNOSUPPORT;
}
