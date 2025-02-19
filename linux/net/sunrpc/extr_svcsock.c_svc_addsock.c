
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int xpt_cred; } ;
struct svc_sock {TYPE_2__ sk_xprt; int sk_sock; } ;
struct svc_serv {int dummy; } ;
struct socket {scalar_t__ state; TYPE_1__* sk; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {scalar_t__ sk_family; scalar_t__ sk_protocol; } ;


 int EAFNOSUPPORT ;
 int EISCONN ;
 int ENOENT ;
 int EPROTONOSUPPORT ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ IS_ERR (struct svc_sock*) ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 int PTR_ERR (struct svc_sock*) ;
 scalar_t__ SS_UNCONNECTED ;
 int SVC_SOCK_DEFAULTS ;
 int THIS_MODULE ;
 int get_cred (struct cred const*) ;
 int kernel_getsockname (int ,struct sockaddr*) ;
 int module_put (int ) ;
 struct socket* sockfd_lookup (int const,int*) ;
 int sockfd_put (struct socket*) ;
 int svc_add_new_perm_xprt (struct svc_serv*,TYPE_2__*) ;
 int svc_one_sock_name (struct svc_sock*,char*,size_t const) ;
 struct svc_sock* svc_setup_socket (struct svc_serv*,struct socket*,int ) ;
 int svc_xprt_set_local (TYPE_2__*,struct sockaddr*,int) ;
 int try_module_get (int ) ;

int svc_addsock(struct svc_serv *serv, const int fd, char *name_return,
  const size_t len, const struct cred *cred)
{
 int err = 0;
 struct socket *so = sockfd_lookup(fd, &err);
 struct svc_sock *svsk = ((void*)0);
 struct sockaddr_storage addr;
 struct sockaddr *sin = (struct sockaddr *)&addr;
 int salen;

 if (!so)
  return err;
 err = -EAFNOSUPPORT;
 if ((so->sk->sk_family != PF_INET) && (so->sk->sk_family != PF_INET6))
  goto out;
 err = -EPROTONOSUPPORT;
 if (so->sk->sk_protocol != IPPROTO_TCP &&
     so->sk->sk_protocol != IPPROTO_UDP)
  goto out;
 err = -EISCONN;
 if (so->state > SS_UNCONNECTED)
  goto out;
 err = -ENOENT;
 if (!try_module_get(THIS_MODULE))
  goto out;
 svsk = svc_setup_socket(serv, so, SVC_SOCK_DEFAULTS);
 if (IS_ERR(svsk)) {
  module_put(THIS_MODULE);
  err = PTR_ERR(svsk);
  goto out;
 }
 salen = kernel_getsockname(svsk->sk_sock, sin);
 if (salen >= 0)
  svc_xprt_set_local(&svsk->sk_xprt, sin, salen);
 svsk->sk_xprt.xpt_cred = get_cred(cred);
 svc_add_new_perm_xprt(serv, &svsk->sk_xprt);
 return svc_one_sock_name(svsk, name_return, len);
out:
 sockfd_put(so);
 return err;
}
