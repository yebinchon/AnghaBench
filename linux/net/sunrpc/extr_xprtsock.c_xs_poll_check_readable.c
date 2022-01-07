
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_xprt {int recv_worker; int sock_state; } ;


 int XPRT_SOCK_DATA_READY ;
 int clear_bit (int ,int *) ;
 int queue_work (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int xprtiod_workqueue ;
 int xs_poll_socket_readable (struct sock_xprt*) ;

__attribute__((used)) static void xs_poll_check_readable(struct sock_xprt *transport)
{

 clear_bit(XPRT_SOCK_DATA_READY, &transport->sock_state);
 if (!xs_poll_socket_readable(transport))
  return;
 if (!test_and_set_bit(XPRT_SOCK_DATA_READY, &transport->sock_state))
  queue_work(xprtiod_workqueue, &transport->recv_worker);
}
