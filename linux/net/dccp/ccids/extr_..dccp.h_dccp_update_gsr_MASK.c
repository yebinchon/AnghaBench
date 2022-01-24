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
typedef  int /*<<< orphan*/  u64 ;
struct sock {int dummy; } ;
struct dccp_sock {int dccps_r_seq_win; int /*<<< orphan*/  dccps_gsr; int /*<<< orphan*/  dccps_swh; int /*<<< orphan*/  dccps_isr; int /*<<< orphan*/  dccps_swl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dccp_sock* FUNC4 (struct sock*) ; 

__attribute__((used)) static inline void FUNC5(struct sock *sk, u64 seq)
{
	struct dccp_sock *dp = FUNC4(sk);

	if (FUNC2(seq, dp->dccps_gsr))
		dp->dccps_gsr = seq;
	/* Sequence validity window depends on remote Sequence Window (7.5.1) */
	dp->dccps_swl = FUNC1(FUNC0(dp->dccps_gsr, 1), dp->dccps_r_seq_win / 4);
	/*
	 * Adjust SWL so that it is not below ISR. In contrast to RFC 4340,
	 * 7.5.1 we perform this check beyond the initial handshake: W/W' are
	 * always > 32, so for the first W/W' packets in the lifetime of a
	 * connection we always have to adjust SWL.
	 * A second reason why we are doing this is that the window depends on
	 * the feature-remote value of Sequence Window: nothing stops the peer
	 * from updating this value while we are busy adjusting SWL for the
	 * first W packets (we would have to count from scratch again then).
	 * Therefore it is safer to always make sure that the Sequence Window
	 * is not artificially extended by a peer who grows SWL downwards by
	 * continually updating the feature-remote Sequence-Window.
	 * If sequence numbers wrap it is bad luck. But that will take a while
	 * (48 bit), and this measure prevents Sequence-number attacks.
	 */
	if (FUNC3(dp->dccps_swl, dp->dccps_isr))
		dp->dccps_swl = dp->dccps_isr;
	dp->dccps_swh = FUNC0(dp->dccps_gsr, (3 * dp->dccps_r_seq_win) / 4);
}