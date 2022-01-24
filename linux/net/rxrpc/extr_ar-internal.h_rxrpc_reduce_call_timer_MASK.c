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
struct rxrpc_call {int /*<<< orphan*/  timer; } ;
typedef  enum rxrpc_timer_trace { ____Placeholder_rxrpc_timer_trace } rxrpc_timer_trace ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_call*,int,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(struct rxrpc_call *call,
					   unsigned long expire_at,
					   unsigned long now,
					   enum rxrpc_timer_trace why)
{
	FUNC1(call, why, now);
	FUNC0(&call->timer, expire_at);
}