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
typedef  unsigned int u64 ;
typedef  unsigned int u32 ;
struct sock {int dummy; } ;
struct ccid3_hc_rx_sock {scalar_t__ rx_rtt; unsigned int rx_bytes_recv; scalar_t__ rx_x_recv; int rx_s; int /*<<< orphan*/  rx_tstamp_last_feedback; } ;
typedef  unsigned int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DCCP_FALLBACK_RTT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct ccid3_hc_rx_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,struct sock*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int,unsigned int) ; 
 void* FUNC8 (unsigned int,unsigned int) ; 
 unsigned int FUNC9 (unsigned int) ; 

__attribute__((used)) static u32 FUNC10(struct sock *sk)
{
	struct ccid3_hc_rx_sock *hc = FUNC2(sk);
	u32 x_recv, p;
	s64 delta;
	u64 fval;

	if (hc->rx_rtt == 0) {
		FUNC1("No RTT estimate available, using fallback RTT\n");
		hc->rx_rtt = DCCP_FALLBACK_RTT;
	}

	delta = FUNC6(FUNC5(), hc->rx_tstamp_last_feedback);
	if (delta <= 0)
		delta = 1;
	x_recv = FUNC8(hc->rx_bytes_recv, delta);
	if (x_recv == 0) {		/* would also trigger divide-by-zero */
		FUNC1("X_recv==0\n");
		if (hc->rx_x_recv == 0) {
			FUNC0("stored value of X_recv is zero");
			return ~0U;
		}
		x_recv = hc->rx_x_recv;
	}

	fval = FUNC7(hc->rx_s, hc->rx_rtt);
	fval = FUNC8(fval, x_recv);
	p = FUNC9(fval);

	FUNC3("%s(%p), receive rate=%u bytes/s, implied "
		       "loss rate=%u\n", FUNC4(sk), sk, x_recv, p);

	return p == 0 ? ~0U : FUNC7(1, p);
}