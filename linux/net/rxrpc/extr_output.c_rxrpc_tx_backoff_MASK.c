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
typedef  scalar_t__ u16 ;
struct rxrpc_call {int /*<<< orphan*/  tx_backoff; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct rxrpc_call *call, int ret)
{
	if (ret < 0) {
		u16 tx_backoff = FUNC0(call->tx_backoff);

		if (tx_backoff < HZ)
			FUNC1(call->tx_backoff, tx_backoff + 1);
	} else {
		FUNC1(call->tx_backoff, 0);
	}
}