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
typedef  struct tcp_congestion_ops {int flags; int /*<<< orphan*/  owner; } const tcp_congestion_ops ;
struct sock {int dummy; } ;
struct inet_connection_sock {int icsk_ca_setsockopt; struct tcp_congestion_ops const* icsk_ca_ops; scalar_t__ icsk_ca_dst_locked; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int EPERM ; 
 int TCP_CONG_NON_RESTRICTED ; 
 struct inet_connection_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct tcp_congestion_ops const* FUNC5 (char const*) ; 
 struct tcp_congestion_ops const* FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct tcp_congestion_ops const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct sock *sk, const char *name, bool load,
			       bool reinit, bool cap_net_admin)
{
	struct inet_connection_sock *icsk = FUNC0(sk);
	const struct tcp_congestion_ops *ca;
	int err = 0;

	if (icsk->icsk_ca_dst_locked)
		return -EPERM;

	FUNC2();
	if (!load)
		ca = FUNC5(name);
	else
		ca = FUNC6(FUNC4(sk), name);

	/* No change asking for existing value */
	if (ca == icsk->icsk_ca_ops) {
		icsk->icsk_ca_setsockopt = 1;
		goto out;
	}

	if (!ca) {
		err = -ENOENT;
	} else if (!load) {
		const struct tcp_congestion_ops *old_ca = icsk->icsk_ca_ops;

		if (FUNC8(ca->owner)) {
			if (reinit) {
				FUNC7(sk, ca);
			} else {
				icsk->icsk_ca_ops = ca;
				FUNC1(old_ca->owner);
			}
		} else {
			err = -EBUSY;
		}
	} else if (!((ca->flags & TCP_CONG_NON_RESTRICTED) || cap_net_admin)) {
		err = -EPERM;
	} else if (!FUNC8(ca->owner)) {
		err = -EBUSY;
	} else {
		FUNC7(sk, ca);
	}
 out:
	FUNC3();
	return err;
}