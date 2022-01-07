
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct linger {int l_onoff; int l_linger; } ;
typedef int no_linger ;


 int SOL_SOCKET ;
 int SO_LINGER ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;

void rds_tcp_set_linger(struct socket *sock)
{
 struct linger no_linger = {
  .l_onoff = 1,
  .l_linger = 0,
 };

 kernel_setsockopt(sock, SOL_SOCKET, SO_LINGER,
     (char *)&no_linger, sizeof(no_linger));
}
