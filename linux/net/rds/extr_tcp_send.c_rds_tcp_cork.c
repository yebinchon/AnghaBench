
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct socket {int dummy; } ;


 int SOL_TCP ;
 int TCP_CORK ;
 int kernel_setsockopt (struct socket*,int ,int ,void*,int) ;

__attribute__((used)) static void rds_tcp_cork(struct socket *sock, int val)
{
 kernel_setsockopt(sock, SOL_TCP, TCP_CORK, (void *)&val, sizeof(val));
}
