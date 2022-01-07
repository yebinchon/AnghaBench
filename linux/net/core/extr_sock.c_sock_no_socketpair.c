
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int EOPNOTSUPP ;

int sock_no_socketpair(struct socket *sock1, struct socket *sock2)
{
 return -EOPNOTSUPP;
}
