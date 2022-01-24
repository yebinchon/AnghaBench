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
typedef  int u8 ;
struct sock {int dummy; } ;
struct ccid3_hc_tx_sock {int tx_x_recv; int /*<<< orphan*/  tx_p; } ;
typedef  int __be32 ;

/* Variables and functions */
 int DCCP_PKT_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct sock*,int,int) ; 
 int EINVAL ; 
#define  TFRC_OPT_LOSS_EVENT_RATE 129 
#define  TFRC_OPT_RECEIVE_RATE 128 
 struct ccid3_hc_tx_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct sock*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct sock *sk, u8 packet_type,
				     u8 option, u8 *optval, u8 optlen)
{
	struct ccid3_hc_tx_sock *hc = FUNC1(sk);
	__be32 opt_val;

	switch (option) {
	case TFRC_OPT_RECEIVE_RATE:
	case TFRC_OPT_LOSS_EVENT_RATE:
		/* Must be ignored on Data packets, cf. RFC 4342 8.3 and 8.5 */
		if (packet_type == DCCP_PKT_DATA)
			break;
		if (FUNC7(optlen != 4)) {
			FUNC0("%s(%p), invalid len %d for %u\n",
				  FUNC3(sk), sk, optlen, option);
			return -EINVAL;
		}
		opt_val = FUNC5(FUNC4((__be32 *)optval));

		if (option == TFRC_OPT_RECEIVE_RATE) {
			/* Receive Rate is kept in units of 64 bytes/second */
			hc->tx_x_recv = opt_val;
			hc->tx_x_recv <<= 6;

			FUNC2("%s(%p), RECEIVE_RATE=%u\n",
				       FUNC3(sk), sk, opt_val);
		} else {
			/* Update the fixpoint Loss Event Rate fraction */
			hc->tx_p = FUNC6(opt_val);

			FUNC2("%s(%p), LOSS_EVENT_RATE=%u\n",
				       FUNC3(sk), sk, opt_val);
		}
	}
	return 0;
}