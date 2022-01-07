
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_xprt {int recv_mutex; int xprt; int xprt_err; int sock_state; int * sock; } ;


 int XPRT_SOCK_WAKE_ERROR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int xchg (int *,int ) ;
 int xprt_wake_pending_tasks (int *,int) ;

__attribute__((used)) static void xs_wake_error(struct sock_xprt *transport)
{
 int sockerr;

 if (!test_bit(XPRT_SOCK_WAKE_ERROR, &transport->sock_state))
  return;
 mutex_lock(&transport->recv_mutex);
 if (transport->sock == ((void*)0))
  goto out;
 if (!test_and_clear_bit(XPRT_SOCK_WAKE_ERROR, &transport->sock_state))
  goto out;
 sockerr = xchg(&transport->xprt_err, 0);
 if (sockerr < 0)
  xprt_wake_pending_tasks(&transport->xprt, sockerr);
out:
 mutex_unlock(&transport->recv_mutex);
}
