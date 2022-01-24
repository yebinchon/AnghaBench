#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {int dummy; } ;
struct sock {int sk_protocol; TYPE_2__* sk_prot; int /*<<< orphan*/  sk_destruct; int /*<<< orphan*/  sk_state; } ;
struct TYPE_3__ {int /*<<< orphan*/  send_lock; int /*<<< orphan*/  tx_work; } ;
struct smc_sock {int /*<<< orphan*/  clcsock_release_lock; TYPE_1__ conn; int /*<<< orphan*/  accept_q_lock; int /*<<< orphan*/  accept_q; int /*<<< orphan*/  connect_work; int /*<<< orphan*/  tcp_listen_work; } ;
struct proto {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* hash ) (struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PF_SMC ; 
 int SMCPROTO_SMC6 ; 
 int /*<<< orphan*/  SMC_INIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC4 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proto*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  smc_connect_work ; 
 int /*<<< orphan*/  smc_destruct ; 
 struct proto smc_proto ; 
 struct proto smc_proto6 ; 
 struct smc_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  smc_tcp_listen_work ; 
 int /*<<< orphan*/  smc_tx_work ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 

__attribute__((used)) static struct sock *FUNC10(struct net *net, struct socket *sock,
				   int protocol)
{
	struct smc_sock *smc;
	struct proto *prot;
	struct sock *sk;

	prot = (protocol == SMCPROTO_SMC6) ? &smc_proto6 : &smc_proto;
	sk = FUNC4(net, PF_SMC, GFP_KERNEL, prot, 0);
	if (!sk)
		return NULL;

	FUNC7(sock, sk); /* sets sk_refcnt to 1 */
	sk->sk_state = SMC_INIT;
	sk->sk_destruct = smc_destruct;
	sk->sk_protocol = protocol;
	smc = FUNC6(sk);
	FUNC2(&smc->tcp_listen_work, smc_tcp_listen_work);
	FUNC2(&smc->connect_work, smc_connect_work);
	FUNC0(&smc->conn.tx_work, smc_tx_work);
	FUNC1(&smc->accept_q);
	FUNC8(&smc->accept_q_lock);
	FUNC8(&smc->conn.send_lock);
	sk->sk_prot->hash(sk);
	FUNC5(sk);
	FUNC3(&smc->clcsock_release_lock);

	return sk;
}