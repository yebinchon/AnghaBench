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
struct TYPE_4__ {int /*<<< orphan*/ * mnt; int /*<<< orphan*/ * dentry; } ;
struct unix_sock {int /*<<< orphan*/  peer_wake; int /*<<< orphan*/  peer_wait; int /*<<< orphan*/  bindlock; int /*<<< orphan*/  iolock; int /*<<< orphan*/  link; int /*<<< orphan*/  inflight; int /*<<< orphan*/  lock; TYPE_2__ path; } ;
struct socket {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_prot; int /*<<< orphan*/  sk_destruct; int /*<<< orphan*/  sk_max_ack_backlog; int /*<<< orphan*/  sk_write_space; int /*<<< orphan*/  sk_allocation; } ;
struct TYPE_3__ {int /*<<< orphan*/  sysctl_max_dgram_qlen; } ;
struct net {TYPE_1__ unx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC11 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unix_dgram_peer_wake_relay ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  unix_nr_socks ; 
 int /*<<< orphan*/  unix_proto ; 
 struct unix_sock* FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  unix_sock_destructor ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 int /*<<< orphan*/  unix_write_space ; 

__attribute__((used)) static struct sock *FUNC19(struct net *net, struct socket *sock, int kern)
{
	struct sock *sk = NULL;
	struct unix_sock *u;

	FUNC2(&unix_nr_socks);
	if (FUNC3(&unix_nr_socks) > 2 * FUNC5())
		goto out;

	sk = FUNC11(net, PF_UNIX, GFP_KERNEL, &unix_proto, kern);
	if (!sk)
		goto out;

	FUNC12(sock, sk);

	sk->sk_allocation	= GFP_KERNEL_ACCOUNT;
	sk->sk_write_space	= unix_write_space;
	sk->sk_max_ack_backlog	= net->unx.sysctl_max_dgram_qlen;
	sk->sk_destruct		= unix_sock_destructor;
	u	  = FUNC17(sk);
	u->path.dentry = NULL;
	u->path.mnt = NULL;
	FUNC15(&u->lock);
	FUNC4(&u->inflight, 0);
	FUNC0(&u->link);
	FUNC10(&u->iolock); /* single task reading lock */
	FUNC10(&u->bindlock); /* single task binding lock */
	FUNC7(&u->peer_wait);
	FUNC6(&u->peer_wake, unix_dgram_peer_wake_relay);
	FUNC16(FUNC18(sk), sk);
out:
	if (sk == NULL)
		FUNC1(&unix_nr_socks);
	else {
		FUNC8();
		FUNC14(FUNC13(sk), sk->sk_prot, 1);
		FUNC9();
	}
	return sk;
}