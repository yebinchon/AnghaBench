
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int svc_tcp_class ;
 int svc_udp_class ;
 int svc_unreg_xprt_class (int *) ;

void svc_cleanup_xprt_sock(void)
{
 svc_unreg_xprt_class(&svc_tcp_class);
 svc_unreg_xprt_class(&svc_udp_class);
}
