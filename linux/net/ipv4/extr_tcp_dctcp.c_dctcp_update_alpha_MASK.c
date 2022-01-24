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
typedef  int u32 ;
struct tcp_sock {int delivered_ce; int delivered; int /*<<< orphan*/  snd_una; } ;
struct sock {int dummy; } ;
struct dctcp {int old_delivered_ce; int dctcp_alpha; int old_delivered; int /*<<< orphan*/  next_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCTCP_MAX_ALPHA ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_sock const*,struct dctcp*) ; 
 int dctcp_shift_g ; 
 struct dctcp* FUNC3 (struct sock*) ; 
 int FUNC4 (unsigned int,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int) ; 
 struct tcp_sock* FUNC7 (struct sock*) ; 

__attribute__((used)) static void FUNC8(struct sock *sk, u32 flags)
{
	const struct tcp_sock *tp = FUNC7(sk);
	struct dctcp *ca = FUNC3(sk);

	/* Expired RTT */
	if (!FUNC1(tp->snd_una, ca->next_seq)) {
		u32 delivered_ce = tp->delivered_ce - ca->old_delivered_ce;
		u32 alpha = ca->dctcp_alpha;

		/* alpha = (1 - g) * alpha + g * F */

		alpha -= FUNC6(alpha, alpha >> dctcp_shift_g);
		if (delivered_ce) {
			u32 delivered = tp->delivered - ca->old_delivered;

			/* If dctcp_shift_g == 1, a 32bit value would overflow
			 * after 8 M packets.
			 */
			delivered_ce <<= (10 - dctcp_shift_g);
			delivered_ce /= FUNC4(1U, delivered);

			alpha = FUNC5(alpha + delivered_ce, DCTCP_MAX_ALPHA);
		}
		/* dctcp_alpha can be read from dctcp_get_info() without
		 * synchro, so we ask compiler to not use dctcp_alpha
		 * as a temporary variable in prior operations.
		 */
		FUNC0(ca->dctcp_alpha, alpha);
		FUNC2(tp, ca);
	}
}