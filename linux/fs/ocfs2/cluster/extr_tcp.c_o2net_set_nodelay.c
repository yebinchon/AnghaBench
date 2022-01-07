
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct socket {int dummy; } ;


 int SOL_TCP ;
 int TCP_NODELAY ;
 int kernel_setsockopt (struct socket*,int ,int ,void*,int) ;

__attribute__((used)) static int o2net_set_nodelay(struct socket *sock)
{
 int val = 1;

 return kernel_setsockopt(sock, SOL_TCP, TCP_NODELAY,
        (void *)&val, sizeof(val));
}
