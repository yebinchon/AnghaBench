#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sock_reuseport {int num_socks; int max_socks; int /*<<< orphan*/  rcu; struct sock** socks; } ;
struct sock {int /*<<< orphan*/  sk_reuseport_cb; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sock_reuseport*) ; 
 struct sock_reuseport* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sock*,int) ; 
 int /*<<< orphan*/  reuseport_free_rcu ; 
 struct sock_reuseport* FUNC6 (struct sock_reuseport*) ; 
 int /*<<< orphan*/  reuseport_lock ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct sock *sk, struct sock *sk2, bool bind_inany)
{
	struct sock_reuseport *old_reuse, *reuse;

	if (!FUNC2(sk2->sk_reuseport_cb)) {
		int err = FUNC5(sk2, bind_inany);

		if (err)
			return err;
	}

	FUNC8(&reuseport_lock);
	reuse = FUNC4(sk2->sk_reuseport_cb,
					  FUNC1(&reuseport_lock));
	old_reuse = FUNC4(sk->sk_reuseport_cb,
					     FUNC1(&reuseport_lock));
	if (old_reuse && old_reuse->num_socks != 1) {
		FUNC9(&reuseport_lock);
		return -EBUSY;
	}

	if (reuse->num_socks == reuse->max_socks) {
		reuse = FUNC6(reuse);
		if (!reuse) {
			FUNC9(&reuseport_lock);
			return -ENOMEM;
		}
	}

	reuse->socks[reuse->num_socks] = sk;
	/* paired with smp_rmb() in reuseport_select_sock() */
	FUNC7();
	reuse->num_socks++;
	FUNC3(sk->sk_reuseport_cb, reuse);

	FUNC9(&reuseport_lock);

	if (old_reuse)
		FUNC0(&old_reuse->rcu, reuseport_free_rcu);
	return 0;
}