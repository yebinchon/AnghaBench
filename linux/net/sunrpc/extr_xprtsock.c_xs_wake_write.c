
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_xprt {int xprt; int sock_state; } ;


 int XPRT_SOCK_WAKE_WRITE ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int xprt_write_space (int *) ;

__attribute__((used)) static void xs_wake_write(struct sock_xprt *transport)
{
 if (test_and_clear_bit(XPRT_SOCK_WAKE_WRITE, &transport->sock_state))
  xprt_write_space(&transport->xprt);
}
