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
struct xdp_sock {scalar_t__ tx; scalar_t__ rx; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XDP_DIAG_RX_RING ; 
 int /*<<< orphan*/  XDP_DIAG_TX_RING ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC1(const struct xdp_sock *xs,
				  struct sk_buff *nlskb)
{
	int err = 0;

	if (xs->rx)
		err = FUNC0(xs->rx, XDP_DIAG_RX_RING, nlskb);
	if (!err && xs->tx)
		err = FUNC0(xs->tx, XDP_DIAG_TX_RING, nlskb);
	return err;
}