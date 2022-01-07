
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_shutdown; } ;
struct smc_sock {TYPE_2__* clcsock; scalar_t__ use_fallback; } ;
struct pipe_inode_info {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* splice_read ) (TYPE_2__*,scalar_t__*,struct pipe_inode_info*,size_t,unsigned int) ;} ;


 int ENOTCONN ;
 int ESPIPE ;
 unsigned int MSG_DONTWAIT ;
 int RCV_SHUTDOWN ;
 scalar_t__ SMC_CLOSED ;
 scalar_t__ SMC_INIT ;
 scalar_t__ SMC_LISTEN ;
 scalar_t__ SMC_PEERFINCLOSEWAIT ;
 unsigned int SPLICE_F_NONBLOCK ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int smc_rx_recvmsg (struct smc_sock*,int *,struct pipe_inode_info*,size_t,unsigned int) ;
 struct smc_sock* smc_sk (struct sock*) ;
 int stub1 (TYPE_2__*,scalar_t__*,struct pipe_inode_info*,size_t,unsigned int) ;

__attribute__((used)) static ssize_t smc_splice_read(struct socket *sock, loff_t *ppos,
          struct pipe_inode_info *pipe, size_t len,
          unsigned int flags)
{
 struct sock *sk = sock->sk;
 struct smc_sock *smc;
 int rc = -ENOTCONN;

 smc = smc_sk(sk);
 lock_sock(sk);
 if (sk->sk_state == SMC_CLOSED && (sk->sk_shutdown & RCV_SHUTDOWN)) {

  rc = 0;
  goto out;
 }
 if (sk->sk_state == SMC_INIT ||
     sk->sk_state == SMC_LISTEN ||
     sk->sk_state == SMC_CLOSED)
  goto out;

 if (sk->sk_state == SMC_PEERFINCLOSEWAIT) {
  rc = 0;
  goto out;
 }

 if (smc->use_fallback) {
  rc = smc->clcsock->ops->splice_read(smc->clcsock, ppos,
          pipe, len, flags);
 } else {
  if (*ppos) {
   rc = -ESPIPE;
   goto out;
  }
  if (flags & SPLICE_F_NONBLOCK)
   flags = MSG_DONTWAIT;
  else
   flags = 0;
  rc = smc_rx_recvmsg(smc, ((void*)0), pipe, len, flags);
 }
out:
 release_sock(sk);

 return rc;
}
