
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_timeout ;
struct socket {int dummy; } ;


 int O2NET_TCP_USER_TIMEOUT ;
 int SOL_TCP ;
 int TCP_USER_TIMEOUT ;
 int kernel_setsockopt (struct socket*,int ,int ,void*,int) ;

__attribute__((used)) static int o2net_set_usertimeout(struct socket *sock)
{
 int user_timeout = O2NET_TCP_USER_TIMEOUT;

 return kernel_setsockopt(sock, SOL_TCP, TCP_USER_TIMEOUT,
    (void *)&user_timeout, sizeof(user_timeout));
}
