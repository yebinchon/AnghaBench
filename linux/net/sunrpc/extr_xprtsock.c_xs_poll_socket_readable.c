
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_xprt {int dummy; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDHUP ;
 int EPOLLRDNORM ;
 int xs_poll_socket (struct sock_xprt*) ;

__attribute__((used)) static bool xs_poll_socket_readable(struct sock_xprt *transport)
{
 __poll_t events = xs_poll_socket(transport);

 return (events & (EPOLLIN | EPOLLRDNORM)) && !(events & EPOLLRDHUP);
}
