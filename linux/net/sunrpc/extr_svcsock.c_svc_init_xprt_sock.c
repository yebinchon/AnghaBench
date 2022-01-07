
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int svc_reg_xprt_class (int *) ;
 int svc_tcp_class ;
 int svc_udp_class ;

void svc_init_xprt_sock(void)
{
 svc_reg_xprt_class(&svc_tcp_class);
 svc_reg_xprt_class(&svc_udp_class);
}
