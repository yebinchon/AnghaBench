
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * sunrpc_table_header ;
 int unregister_sysctl_table (int *) ;
 int xprt_unregister_transport (int *) ;
 int xs_bc_tcp_transport ;
 int xs_local_transport ;
 int xs_tcp_transport ;
 int xs_udp_transport ;

void cleanup_socket_xprt(void)
{
 if (sunrpc_table_header) {
  unregister_sysctl_table(sunrpc_table_header);
  sunrpc_table_header = ((void*)0);
 }

 xprt_unregister_transport(&xs_local_transport);
 xprt_unregister_transport(&xs_udp_transport);
 xprt_unregister_transport(&xs_tcp_transport);
 xprt_unregister_transport(&xs_bc_tcp_transport);
}
