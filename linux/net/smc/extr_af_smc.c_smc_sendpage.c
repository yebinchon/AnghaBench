
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct smc_sock {int clcsock; scalar_t__ use_fallback; } ;
struct page {int dummy; } ;
typedef int ssize_t ;


 int EPIPE ;
 scalar_t__ SMC_ACTIVE ;
 int kernel_sendpage (int ,struct page*,int,size_t,int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 struct smc_sock* smc_sk (struct sock*) ;
 int sock_no_sendpage (struct socket*,struct page*,int,size_t,int) ;

__attribute__((used)) static ssize_t smc_sendpage(struct socket *sock, struct page *page,
       int offset, size_t size, int flags)
{
 struct sock *sk = sock->sk;
 struct smc_sock *smc;
 int rc = -EPIPE;

 smc = smc_sk(sk);
 lock_sock(sk);
 if (sk->sk_state != SMC_ACTIVE) {
  release_sock(sk);
  goto out;
 }
 release_sock(sk);
 if (smc->use_fallback)
  rc = kernel_sendpage(smc->clcsock, page, offset,
         size, flags);
 else
  rc = sock_no_sendpage(sock, page, offset, size, flags);

out:
 return rc;
}
