
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int EOPNOTSUPP ;

int sock_no_shutdown(struct socket *sock, int how)
{
 return -EOPNOTSUPP;
}
