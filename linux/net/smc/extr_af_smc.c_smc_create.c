
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {scalar_t__ type; int * ops; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {void* sk_rcvbuf; void* sk_sndbuf; } ;
struct smc_sock {int use_fallback; TYPE_3__* clcsock; TYPE_1__ sk; scalar_t__ fallback_rsn; } ;
struct net {int dummy; } ;
struct TYPE_6__ {TYPE_2__* sk; } ;
struct TYPE_5__ {int sk_rcvbuf; int sk_sndbuf; } ;


 int ENOBUFS ;
 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int IPPROTO_TCP ;
 int PF_INET ;
 int PF_INET6 ;
 int SMCPROTO_SMC ;
 int SMCPROTO_SMC6 ;
 int SMC_BUF_MIN_SIZE ;
 scalar_t__ SOCK_STREAM ;
 void* max (int ,int ) ;
 int sk_common_release (struct sock*) ;
 struct smc_sock* smc_sk (struct sock*) ;
 struct sock* smc_sock_alloc (struct net*,struct socket*,int) ;
 int smc_sock_ops ;
 int sock_create_kern (struct net*,int,scalar_t__,int ,TYPE_3__**) ;

__attribute__((used)) static int smc_create(struct net *net, struct socket *sock, int protocol,
        int kern)
{
 int family = (protocol == SMCPROTO_SMC6) ? PF_INET6 : PF_INET;
 struct smc_sock *smc;
 struct sock *sk;
 int rc;

 rc = -ESOCKTNOSUPPORT;
 if (sock->type != SOCK_STREAM)
  goto out;

 rc = -EPROTONOSUPPORT;
 if (protocol != SMCPROTO_SMC && protocol != SMCPROTO_SMC6)
  goto out;

 rc = -ENOBUFS;
 sock->ops = &smc_sock_ops;
 sk = smc_sock_alloc(net, sock, protocol);
 if (!sk)
  goto out;


 smc = smc_sk(sk);
 smc->use_fallback = 0;
 smc->fallback_rsn = 0;
 rc = sock_create_kern(net, family, SOCK_STREAM, IPPROTO_TCP,
         &smc->clcsock);
 if (rc) {
  sk_common_release(sk);
  goto out;
 }
 smc->sk.sk_sndbuf = max(smc->clcsock->sk->sk_sndbuf, SMC_BUF_MIN_SIZE);
 smc->sk.sk_rcvbuf = max(smc->clcsock->sk->sk_rcvbuf, SMC_BUF_MIN_SIZE);

out:
 return rc;
}
