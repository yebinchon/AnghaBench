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
struct sock_reuseport {int bind_inany; int num_socks; struct sock** socks; } ;
struct sock {int /*<<< orphan*/  sk_reuseport_cb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INIT_SOCKS ; 
 struct sock_reuseport* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sock_reuseport*) ; 
 struct sock_reuseport* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reuseport_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct sock *sk, bool bind_inany)
{
	struct sock_reuseport *reuse;

	/* bh lock used since this function call may precede hlist lock in
	 * soft irq of receive path or setsockopt from process context
	 */
	FUNC4(&reuseport_lock);

	/* Allocation attempts can occur concurrently via the setsockopt path
	 * and the bind/hash path.  Nothing to do when we lose the race.
	 */
	reuse = FUNC3(sk->sk_reuseport_cb,
					  FUNC1(&reuseport_lock));
	if (reuse) {
		/* Only set reuse->bind_inany if the bind_inany is true.
		 * Otherwise, it will overwrite the reuse->bind_inany
		 * which was set by the bind/hash path.
		 */
		if (bind_inany)
			reuse->bind_inany = bind_inany;
		goto out;
	}

	reuse = FUNC0(INIT_SOCKS);
	if (!reuse) {
		FUNC5(&reuseport_lock);
		return -ENOMEM;
	}

	reuse->socks[0] = sk;
	reuse->num_socks = 1;
	reuse->bind_inany = bind_inany;
	FUNC2(sk->sk_reuseport_cb, reuse);

out:
	FUNC5(&reuseport_lock);

	return 0;
}