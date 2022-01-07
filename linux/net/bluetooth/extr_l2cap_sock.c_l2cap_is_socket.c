
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int * ops; } ;


 int l2cap_sock_ops ;

bool l2cap_is_socket(struct socket *sock)
{
 return sock && sock->ops == &l2cap_sock_ops;
}
