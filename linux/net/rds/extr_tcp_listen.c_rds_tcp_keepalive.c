
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
typedef int keepidle ;
typedef int keepcnt ;
typedef int keepalive ;


 int IPPROTO_TCP ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int TCP_KEEPCNT ;
 int TCP_KEEPIDLE ;
 int TCP_KEEPINTVL ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;

int rds_tcp_keepalive(struct socket *sock)
{

 int keepidle = 5;
 int keepcnt = 5;
 int keepalive = 1;
 int ret = 0;

 ret = kernel_setsockopt(sock, SOL_SOCKET, SO_KEEPALIVE,
    (char *)&keepalive, sizeof(keepalive));
 if (ret < 0)
  goto bail;

 ret = kernel_setsockopt(sock, IPPROTO_TCP, TCP_KEEPCNT,
    (char *)&keepcnt, sizeof(keepcnt));
 if (ret < 0)
  goto bail;

 ret = kernel_setsockopt(sock, IPPROTO_TCP, TCP_KEEPIDLE,
    (char *)&keepidle, sizeof(keepidle));
 if (ret < 0)
  goto bail;




 ret = kernel_setsockopt(sock, IPPROTO_TCP, TCP_KEEPINTVL,
    (char *)&keepidle, sizeof(keepidle));
bail:
 return ret;
}
