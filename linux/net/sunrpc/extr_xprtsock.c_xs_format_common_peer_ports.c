
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rpc_xprt {void** address_strings; } ;
typedef int buf ;


 int GFP_KERNEL ;
 size_t RPC_DISPLAY_HEX_PORT ;
 size_t RPC_DISPLAY_PORT ;
 void* kstrdup (char*,int ) ;
 int rpc_get_port (struct sockaddr*) ;
 int snprintf (char*,int,char*,int) ;
 struct sockaddr* xs_addr (struct rpc_xprt*) ;

__attribute__((used)) static void xs_format_common_peer_ports(struct rpc_xprt *xprt)
{
 struct sockaddr *sap = xs_addr(xprt);
 char buf[128];

 snprintf(buf, sizeof(buf), "%u", rpc_get_port(sap));
 xprt->address_strings[RPC_DISPLAY_PORT] = kstrdup(buf, GFP_KERNEL);

 snprintf(buf, sizeof(buf), "%4hx", rpc_get_port(sap));
 xprt->address_strings[RPC_DISPLAY_HEX_PORT] = kstrdup(buf, GFP_KERNEL);
}
