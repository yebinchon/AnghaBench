
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_reuse; } ;
struct smc_sock {TYPE_3__* clcsock; scalar_t__ connect_nonblock; } ;
struct TYPE_6__ {TYPE_2__* sk; } ;
struct TYPE_5__ {int sk_reuse; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int INADDR_ANY ;
 scalar_t__ SMC_INIT ;
 scalar_t__ htonl (int ) ;
 int kernel_bind (TYPE_3__*,struct sockaddr*,int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 struct smc_sock* smc_sk (struct sock*) ;

__attribute__((used)) static int smc_bind(struct socket *sock, struct sockaddr *uaddr,
      int addr_len)
{
 struct sockaddr_in *addr = (struct sockaddr_in *)uaddr;
 struct sock *sk = sock->sk;
 struct smc_sock *smc;
 int rc;

 smc = smc_sk(sk);


 rc = -EINVAL;
 if (addr_len < sizeof(struct sockaddr_in))
  goto out;

 rc = -EAFNOSUPPORT;
 if (addr->sin_family != AF_INET &&
     addr->sin_family != AF_INET6 &&
     addr->sin_family != AF_UNSPEC)
  goto out;

 if (addr->sin_family == AF_UNSPEC &&
     addr->sin_addr.s_addr != htonl(INADDR_ANY))
  goto out;

 lock_sock(sk);


 rc = -EINVAL;
 if (sk->sk_state != SMC_INIT || smc->connect_nonblock)
  goto out_rel;

 smc->clcsock->sk->sk_reuse = sk->sk_reuse;
 rc = kernel_bind(smc->clcsock, uaddr, addr_len);

out_rel:
 release_sock(sk);
out:
 return rc;
}
