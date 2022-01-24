#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ccid2_hc_rx_sock {scalar_t__ rx_num_data_pkts; } ;
struct TYPE_2__ {scalar_t__ dccps_r_ack_ratio; } ;

/* Variables and functions */
 struct ccid2_hc_rx_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk, struct sk_buff *skb)
{
	struct ccid2_hc_rx_sock *hc = FUNC0(sk);

	if (!FUNC1(skb))
		return;

	if (++hc->rx_num_data_pkts >= FUNC3(sk)->dccps_r_ack_ratio) {
		FUNC2(sk);
		hc->rx_num_data_pkts = 0;
	}
}