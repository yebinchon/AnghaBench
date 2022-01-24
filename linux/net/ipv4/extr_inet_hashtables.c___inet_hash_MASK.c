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
struct sock {scalar_t__ sk_state; scalar_t__ sk_family; TYPE_2__* sk_prot; int /*<<< orphan*/  sk_node; scalar_t__ sk_reuseport; } ;
struct inet_listen_hashbucket {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; int /*<<< orphan*/  head; } ;
struct inet_hashinfo {struct inet_listen_hashbucket* listening_hash; } ;
struct TYPE_3__ {struct inet_hashinfo* hashinfo; } ;
struct TYPE_4__ {TYPE_1__ h; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  CONFIG_IPV6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_RCU_FREE ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct inet_hashinfo*,struct sock*) ; 
 int FUNC6 (struct sock*,struct inet_listen_hashbucket*) ; 
 size_t FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct sock *sk, struct sock *osk)
{
	struct inet_hashinfo *hashinfo = sk->sk_prot->h.hashinfo;
	struct inet_listen_hashbucket *ilb;
	int err = 0;

	if (sk->sk_state != TCP_LISTEN) {
		FUNC4(sk, osk);
		return 0;
	}
	FUNC1(!FUNC8(sk));
	ilb = &hashinfo->listening_hash[FUNC7(sk)];

	FUNC12(&ilb->lock);
	if (sk->sk_reuseport) {
		err = FUNC6(sk, ilb);
		if (err)
			goto unlock;
	}
	if (FUNC0(CONFIG_IPV6) && sk->sk_reuseport &&
		sk->sk_family == AF_INET6)
		FUNC3(&sk->sk_node, &ilb->head);
	else
		FUNC2(&sk->sk_node, &ilb->head);
	FUNC5(hashinfo, sk);
	ilb->count++;
	FUNC11(sk, SOCK_RCU_FREE);
	FUNC10(FUNC9(sk), sk->sk_prot, 1);
unlock:
	FUNC13(&ilb->lock);

	return err;
}