
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sock {int sk_protocol; TYPE_2__* sk_prot; int sk_destruct; int sk_state; } ;
struct TYPE_3__ {int send_lock; int tx_work; } ;
struct smc_sock {int clcsock_release_lock; TYPE_1__ conn; int accept_q_lock; int accept_q; int connect_work; int tcp_listen_work; } ;
struct proto {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int (* hash ) (struct sock*) ;} ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int PF_SMC ;
 int SMCPROTO_SMC6 ;
 int SMC_INIT ;
 int mutex_init (int *) ;
 struct sock* sk_alloc (struct net*,int ,int ,struct proto*,int ) ;
 int sk_refcnt_debug_inc (struct sock*) ;
 int smc_connect_work ;
 int smc_destruct ;
 struct proto smc_proto ;
 struct proto smc_proto6 ;
 struct smc_sock* smc_sk (struct sock*) ;
 int smc_tcp_listen_work ;
 int smc_tx_work ;
 int sock_init_data (struct socket*,struct sock*) ;
 int spin_lock_init (int *) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static struct sock *smc_sock_alloc(struct net *net, struct socket *sock,
       int protocol)
{
 struct smc_sock *smc;
 struct proto *prot;
 struct sock *sk;

 prot = (protocol == SMCPROTO_SMC6) ? &smc_proto6 : &smc_proto;
 sk = sk_alloc(net, PF_SMC, GFP_KERNEL, prot, 0);
 if (!sk)
  return ((void*)0);

 sock_init_data(sock, sk);
 sk->sk_state = SMC_INIT;
 sk->sk_destruct = smc_destruct;
 sk->sk_protocol = protocol;
 smc = smc_sk(sk);
 INIT_WORK(&smc->tcp_listen_work, smc_tcp_listen_work);
 INIT_WORK(&smc->connect_work, smc_connect_work);
 INIT_DELAYED_WORK(&smc->conn.tx_work, smc_tx_work);
 INIT_LIST_HEAD(&smc->accept_q);
 spin_lock_init(&smc->accept_q_lock);
 spin_lock_init(&smc->conn.send_lock);
 sk->sk_prot->hash(sk);
 sk_refcnt_debug_inc(sk);
 mutex_init(&smc->clcsock_release_lock);

 return sk;
}
