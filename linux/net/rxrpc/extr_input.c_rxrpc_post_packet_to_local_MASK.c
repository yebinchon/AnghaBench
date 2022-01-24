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
struct rxrpc_local {int /*<<< orphan*/  event_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rxrpc_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rxrpc_local*) ; 
 int /*<<< orphan*/  FUNC3 (struct rxrpc_local*) ; 
 int /*<<< orphan*/  rxrpc_skb_freed ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct rxrpc_local *local,
				       struct sk_buff *skb)
{
	FUNC0("%p,%p", local, skb);

	if (FUNC2(local)) {
		FUNC4(&local->event_queue, skb);
		FUNC3(local);
	} else {
		FUNC1(skb, rxrpc_skb_freed);
	}
}