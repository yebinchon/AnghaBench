
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;


 int SHUT_RDWR ;
 int kernel_sock_shutdown (struct socket*,int ) ;
 int rcu_assign_sk_user_data (int ,int *) ;
 int sock_release (struct socket*) ;

void udp_tunnel_sock_release(struct socket *sock)
{
 rcu_assign_sk_user_data(sock->sk, ((void*)0));
 kernel_sock_shutdown(sock, SHUT_RDWR);
 sock_release(sock);
}
