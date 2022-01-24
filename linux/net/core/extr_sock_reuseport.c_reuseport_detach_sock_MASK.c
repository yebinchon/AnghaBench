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
struct sock_reuseport {int num_socks; int /*<<< orphan*/  rcu; struct sock** socks; scalar_t__ reuseport_id; } ;
struct sock {int /*<<< orphan*/  sk_reuseport_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sock_reuseport* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reuseport_free_rcu ; 
 int /*<<< orphan*/  reuseport_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct sock *sk)
{
	struct sock_reuseport *reuse;
	int i;

	FUNC5(&reuseport_lock);
	reuse = FUNC4(sk->sk_reuseport_cb,
					  FUNC2(&reuseport_lock));

	/* At least one of the sk in this reuseport group is added to
	 * a bpf map.  Notify the bpf side.  The bpf map logic will
	 * remove the sk if it is indeed added to a bpf map.
	 */
	if (reuse->reuseport_id)
		FUNC0(sk);

	FUNC3(sk->sk_reuseport_cb, NULL);

	for (i = 0; i < reuse->num_socks; i++) {
		if (reuse->socks[i] == sk) {
			reuse->socks[i] = reuse->socks[reuse->num_socks - 1];
			reuse->num_socks--;
			if (reuse->num_socks == 0)
				FUNC1(&reuse->rcu, reuseport_free_rcu);
			break;
		}
	}
	FUNC6(&reuseport_lock);
}