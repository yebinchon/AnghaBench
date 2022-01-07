
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int tomoyo_socket_listen_permission (struct socket*) ;

__attribute__((used)) static int tomoyo_socket_listen(struct socket *sock, int backlog)
{
 return tomoyo_socket_listen_permission(sock);
}
