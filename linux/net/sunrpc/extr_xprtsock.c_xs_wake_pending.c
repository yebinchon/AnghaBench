
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_xprt {int xprt; int sock_state; } ;


 int EAGAIN ;
 int XPRT_SOCK_WAKE_PENDING ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int xprt_wake_pending_tasks (int *,int ) ;

__attribute__((used)) static void xs_wake_pending(struct sock_xprt *transport)
{
 if (test_and_clear_bit(XPRT_SOCK_WAKE_PENDING, &transport->sock_state))
  xprt_wake_pending_tasks(&transport->xprt, -EAGAIN);
}
