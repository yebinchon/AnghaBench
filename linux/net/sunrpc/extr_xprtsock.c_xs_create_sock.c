
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sock_xprt {struct file* file; } ;
struct rpc_xprt {int xprt_net; } ;
struct file {int dummy; } ;


 struct socket* ERR_CAST (struct file*) ;
 struct socket* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct file*) ;
 int O_NONBLOCK ;
 int __sock_create (int ,int,int,int,struct socket**,int) ;
 int dprintk (char*,int,int) ;
 struct file* sock_alloc_file (struct socket*,int ,int *) ;
 int sock_release (struct socket*) ;
 int xs_bind (struct sock_xprt*,struct socket*) ;
 int xs_reclassify_socket (int,struct socket*) ;
 int xs_sock_set_reuseport (struct socket*) ;

__attribute__((used)) static struct socket *xs_create_sock(struct rpc_xprt *xprt,
  struct sock_xprt *transport, int family, int type,
  int protocol, bool reuseport)
{
 struct file *filp;
 struct socket *sock;
 int err;

 err = __sock_create(xprt->xprt_net, family, type, protocol, &sock, 1);
 if (err < 0) {
  dprintk("RPC:       can't create %d transport socket (%d).\n",
    protocol, -err);
  goto out;
 }
 xs_reclassify_socket(family, sock);

 if (reuseport)
  xs_sock_set_reuseport(sock);

 err = xs_bind(transport, sock);
 if (err) {
  sock_release(sock);
  goto out;
 }

 filp = sock_alloc_file(sock, O_NONBLOCK, ((void*)0));
 if (IS_ERR(filp))
  return ERR_CAST(filp);
 transport->file = filp;

 return sock;
out:
 return ERR_PTR(err);
}
