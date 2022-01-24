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
struct ccid2_hc_tx_sock {int /*<<< orphan*/  tx_av_chunks; } ;

/* Variables and functions */
#define  DCCPO_ACK_VECTOR_0 129 
#define  DCCPO_ACK_VECTOR_1 128 
 struct ccid2_hc_tx_sock* FUNC0 (struct sock*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sock *sk, u8 packet_type,
				     u8 option, u8 *optval, u8 optlen)
{
	struct ccid2_hc_tx_sock *hc = FUNC0(sk);

	switch (option) {
	case DCCPO_ACK_VECTOR_0:
	case DCCPO_ACK_VECTOR_1:
		return FUNC1(&hc->tx_av_chunks, optval, optlen,
					      option - DCCPO_ACK_VECTOR_0);
	}
	return 0;
}