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
typedef  int /*<<< orphan*/  u32 ;
struct tcp_sock {scalar_t__ retrans_stamp; scalar_t__ retrans_out; scalar_t__ undo_marker; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,char*) ; 
 int /*<<< orphan*/  LINUX_MIB_TCPPARTIALUNDO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int) ; 

__attribute__((used)) static bool FUNC9(struct sock *sk, u32 prior_snd_una)
{
	struct tcp_sock *tp = FUNC6(sk);

	if (tp->undo_marker && FUNC5(tp)) {
		/* Plain luck! Hole if filled with delayed
		 * packet, rather than with a retransmit. Check reordering.
		 */
		FUNC4(sk, prior_snd_una, 1);

		/* We are getting evidence that the reordering degree is higher
		 * than we realized. If there are no retransmits out then we
		 * can undo. Otherwise we clock out new packets but do not
		 * mark more packets lost or retransmit more.
		 */
		if (tp->retrans_out)
			return true;

		if (!FUNC3(sk))
			tp->retrans_stamp = 0;

		FUNC0(sk, "partial recovery");
		FUNC8(sk, true);
		FUNC1(FUNC2(sk), LINUX_MIB_TCPPARTIALUNDO);
		FUNC7(sk);
		return true;
	}
	return false;
}