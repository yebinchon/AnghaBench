
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_xprt {int xprt; int recv_mutex; int * sock; } ;
typedef size_t ssize_t ;


 size_t ESHUTDOWN ;
 int MSG_DONTWAIT ;
 int SHUT_RDWR ;
 int cond_resched () ;
 int kernel_sock_shutdown (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_xs_stream_read_data (int *,size_t,size_t) ;
 int xs_poll_check_readable (struct sock_xprt*) ;
 size_t xs_read_stream (struct sock_xprt*,int ) ;

__attribute__((used)) static void xs_stream_data_receive(struct sock_xprt *transport)
{
 size_t read = 0;
 ssize_t ret = 0;

 mutex_lock(&transport->recv_mutex);
 if (transport->sock == ((void*)0))
  goto out;
 for (;;) {
  ret = xs_read_stream(transport, MSG_DONTWAIT);
  if (ret < 0)
   break;
  read += ret;
  cond_resched();
 }
 if (ret == -ESHUTDOWN)
  kernel_sock_shutdown(transport->sock, SHUT_RDWR);
 else
  xs_poll_check_readable(transport);
out:
 mutex_unlock(&transport->recv_mutex);
 trace_xs_stream_read_data(&transport->xprt, ret, read);
}
