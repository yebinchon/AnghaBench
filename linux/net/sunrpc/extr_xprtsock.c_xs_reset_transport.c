
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct rpc_xprt {int swapper; } ;
struct sock_xprt {int recv_mutex; struct file* file; struct socket* sock; struct sock* inet; struct rpc_xprt xprt; } ;
struct sock {int sk_callback_lock; int * sk_user_data; } ;
struct file {int dummy; } ;


 int SHUT_RDWR ;
 scalar_t__ atomic_read (int *) ;
 int fput (struct file*) ;
 int kernel_sock_shutdown (struct socket*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sk_clear_memalloc (struct sock*) ;
 int trace_rpc_socket_close (struct rpc_xprt*,struct socket*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;
 int xprt_clear_connected (struct rpc_xprt*) ;
 int xprt_disconnect_done (struct rpc_xprt*) ;
 int xs_restore_old_callbacks (struct sock_xprt*,struct sock*) ;
 int xs_sock_reset_connection_flags (struct rpc_xprt*) ;
 int xs_stream_reset_connect (struct sock_xprt*) ;

__attribute__((used)) static void xs_reset_transport(struct sock_xprt *transport)
{
 struct socket *sock = transport->sock;
 struct sock *sk = transport->inet;
 struct rpc_xprt *xprt = &transport->xprt;
 struct file *filp = transport->file;

 if (sk == ((void*)0))
  return;

 if (atomic_read(&transport->xprt.swapper))
  sk_clear_memalloc(sk);

 kernel_sock_shutdown(sock, SHUT_RDWR);

 mutex_lock(&transport->recv_mutex);
 write_lock_bh(&sk->sk_callback_lock);
 transport->inet = ((void*)0);
 transport->sock = ((void*)0);
 transport->file = ((void*)0);

 sk->sk_user_data = ((void*)0);

 xs_restore_old_callbacks(transport, sk);
 xprt_clear_connected(xprt);
 write_unlock_bh(&sk->sk_callback_lock);
 xs_sock_reset_connection_flags(xprt);

 xs_stream_reset_connect(transport);
 mutex_unlock(&transport->recv_mutex);

 trace_rpc_socket_close(xprt, sock);
 fput(filp);

 xprt_disconnect_done(xprt);
}
