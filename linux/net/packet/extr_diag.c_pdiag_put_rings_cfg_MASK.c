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
struct sk_buff {int dummy; } ;
struct packet_sock {int /*<<< orphan*/  pg_vec_lock; int /*<<< orphan*/  tp_version; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  PACKET_DIAG_RX_RING ; 
 int /*<<< orphan*/  PACKET_DIAG_TX_RING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC3(struct packet_sock *po, struct sk_buff *skb)
{
	int ret;

	FUNC0(&po->pg_vec_lock);
	ret = FUNC2(&po->rx_ring, po->tp_version,
			PACKET_DIAG_RX_RING, skb);
	if (!ret)
		ret = FUNC2(&po->tx_ring, po->tp_version,
				PACKET_DIAG_TX_RING, skb);
	FUNC1(&po->pg_vec_lock);

	return ret;
}