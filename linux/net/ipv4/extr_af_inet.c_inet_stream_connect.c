
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;
struct sockaddr {int dummy; } ;


 int __inet_stream_connect (struct socket*,struct sockaddr*,int,int,int ) ;
 int lock_sock (int ) ;
 int release_sock (int ) ;

int inet_stream_connect(struct socket *sock, struct sockaddr *uaddr,
   int addr_len, int flags)
{
 int err;

 lock_sock(sock->sk);
 err = __inet_stream_connect(sock, uaddr, addr_len, flags, 0);
 release_sock(sock->sk);
 return err;
}
