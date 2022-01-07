
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct net {int dummy; } ;


 int __sock_create (struct net*,int,int,int,struct socket**,int) ;

int sock_create_kern(struct net *net, int family, int type, int protocol, struct socket **res)
{
 return __sock_create(net, family, type, protocol, res, 1);
}
