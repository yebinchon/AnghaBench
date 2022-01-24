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
struct sock {scalar_t__ sk_state; TYPE_2__* sk_prot; int /*<<< orphan*/  sk_reuseport_cb; int /*<<< orphan*/  sk_hash; } ;
struct inet_listen_hashbucket {int /*<<< orphan*/  count; int /*<<< orphan*/  lock; } ;
struct inet_hashinfo {struct inet_listen_hashbucket* listening_hash; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_3__ {struct inet_hashinfo* hashinfo; } ;
struct TYPE_4__ {TYPE_1__ h; } ;

/* Variables and functions */
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/ * FUNC2 (struct inet_hashinfo*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct inet_hashinfo*,struct sock*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct sock *sk)
{
	struct inet_hashinfo *hashinfo = sk->sk_prot->h.hashinfo;
	struct inet_listen_hashbucket *ilb = NULL;
	spinlock_t *lock;

	if (FUNC7(sk))
		return;

	if (sk->sk_state == TCP_LISTEN) {
		ilb = &hashinfo->listening_hash[FUNC3(sk)];
		lock = &ilb->lock;
	} else {
		lock = FUNC2(hashinfo, sk->sk_hash);
	}
	FUNC10(lock);
	if (FUNC7(sk))
		goto unlock;

	if (FUNC5(sk->sk_reuseport_cb))
		FUNC6(sk);
	if (ilb) {
		FUNC4(hashinfo, sk);
		 FUNC0(sk);
		 ilb->count--;
	} else {
		FUNC1(sk);
	}
	FUNC9(FUNC8(sk), sk->sk_prot, -1);
unlock:
	FUNC11(lock);
}