
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;


 int tcp_inq (int ) ;

int tcp_peek_len(struct socket *sock)
{
 return tcp_inq(sock->sk);
}
