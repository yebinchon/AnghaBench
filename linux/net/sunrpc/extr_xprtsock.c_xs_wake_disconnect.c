
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_xprt {int xprt; int sock_state; } ;


 int XPRT_SOCK_WAKE_DISCONNECT ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int xs_tcp_force_close (int *) ;

__attribute__((used)) static void xs_wake_disconnect(struct sock_xprt *transport)
{
 if (test_and_clear_bit(XPRT_SOCK_WAKE_DISCONNECT, &transport->sock_state))
  xs_tcp_force_close(&transport->xprt);
}
