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
typedef  scalar_t__ u32 ;
struct tcp_congestion_ops {int /*<<< orphan*/  owner; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {struct tcp_congestion_ops const* icsk_ca_ops; int /*<<< orphan*/  icsk_ca_setsockopt; int /*<<< orphan*/  icsk_ca_dst_locked; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTAX_CC_ALGO ; 
 int /*<<< orphan*/  TCP_CA_Open ; 
 scalar_t__ TCP_CA_UNSPEC ; 
 scalar_t__ FUNC0 (struct dst_entry const*,int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct dst_entry const*) ; 
 struct tcp_congestion_ops* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(struct sock *sk, const struct dst_entry *dst)
{
	struct inet_connection_sock *icsk = FUNC1(sk);
	u32 ca_key = FUNC0(dst, RTAX_CC_ALGO);
	bool ca_got_dst = false;

	if (ca_key != TCP_CA_UNSPEC) {
		const struct tcp_congestion_ops *ca;

		FUNC3();
		ca = FUNC7(ca_key);
		if (FUNC2(ca && FUNC9(ca->owner))) {
			icsk->icsk_ca_dst_locked = FUNC6(dst);
			icsk->icsk_ca_ops = ca;
			ca_got_dst = true;
		}
		FUNC4();
	}

	/* If no valid choice made yet, assign current system default ca. */
	if (!ca_got_dst &&
	    (!icsk->icsk_ca_setsockopt ||
	     !FUNC9(icsk->icsk_ca_ops->owner)))
		FUNC5(sk);

	FUNC8(sk, TCP_CA_Open);
}