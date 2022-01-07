
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;


 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int selinux_netlbl_socket_connect_locked (struct sock*,struct sockaddr*) ;

int selinux_netlbl_socket_connect(struct sock *sk, struct sockaddr *addr)
{
 int rc;

 lock_sock(sk);
 rc = selinux_netlbl_socket_connect_locked(sk, addr);
 release_sock(sk);

 return rc;
}
