
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xpt_flags; } ;
struct svc_sock {TYPE_1__ sk_xprt; struct sock* sk_sk; int sk_owspace; int sk_odata; int sk_ostate; struct socket* sk_sock; } ;
struct svc_serv {int dummy; } ;
struct socket {scalar_t__ type; struct sock* sk; } ;
struct sock {struct svc_sock* sk_user_data; int sk_write_space; int sk_data_ready; int sk_state_change; int sk_protocol; int sk_family; } ;
struct TYPE_4__ {int inet_sport; } ;


 int ENOMEM ;
 struct svc_sock* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ SOCK_DGRAM ;
 int SVC_SOCK_ANONYMOUS ;
 int XPT_CLOSE ;
 int XPT_LISTENER ;
 int dprintk (char*,...) ;
 TYPE_2__* inet_sk (struct sock*) ;
 int kfree (struct svc_sock*) ;
 struct svc_sock* kzalloc (int,int ) ;
 int ntohs (int ) ;
 int sock_net (struct sock*) ;
 int svc_register (struct svc_serv*,int ,int ,int ,int ) ;
 int svc_tcp_init (struct svc_sock*,struct svc_serv*) ;
 int svc_udp_init (struct svc_sock*,struct svc_serv*) ;
 int test_bit (int ,int *) ;
 int wmb () ;

__attribute__((used)) static struct svc_sock *svc_setup_socket(struct svc_serv *serv,
      struct socket *sock,
      int flags)
{
 struct svc_sock *svsk;
 struct sock *inet;
 int pmap_register = !(flags & SVC_SOCK_ANONYMOUS);
 int err = 0;

 dprintk("svc: svc_setup_socket %p\n", sock);
 svsk = kzalloc(sizeof(*svsk), GFP_KERNEL);
 if (!svsk)
  return ERR_PTR(-ENOMEM);

 inet = sock->sk;


 if (pmap_register)
  err = svc_register(serv, sock_net(sock->sk), inet->sk_family,
         inet->sk_protocol,
         ntohs(inet_sk(inet)->inet_sport));

 if (err < 0) {
  kfree(svsk);
  return ERR_PTR(err);
 }

 svsk->sk_sock = sock;
 svsk->sk_sk = inet;
 svsk->sk_ostate = inet->sk_state_change;
 svsk->sk_odata = inet->sk_data_ready;
 svsk->sk_owspace = inet->sk_write_space;





 wmb();
 inet->sk_user_data = svsk;


 if (sock->type == SOCK_DGRAM)
  svc_udp_init(svsk, serv);
 else
  svc_tcp_init(svsk, serv);

 dprintk("svc: svc_setup_socket created %p (inet %p), "
   "listen %d close %d\n",
   svsk, svsk->sk_sk,
   test_bit(XPT_LISTENER, &svsk->sk_xprt.xpt_flags),
   test_bit(XPT_CLOSE, &svsk->sk_xprt.xpt_flags));

 return svsk;
}
