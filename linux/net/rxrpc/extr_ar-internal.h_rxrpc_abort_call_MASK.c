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
typedef  int /*<<< orphan*/  u32 ;
struct rxrpc_call {int /*<<< orphan*/  state_lock; } ;
typedef  int /*<<< orphan*/  rxrpc_seq_t ;

/* Variables and functions */
 int FUNC0 (char const*,struct rxrpc_call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC3(const char *why, struct rxrpc_call *call,
				    rxrpc_seq_t seq, u32 abort_code, int error)
{
	bool ret;

	FUNC1(&call->state_lock);
	ret = FUNC0(why, call, seq, abort_code, error);
	FUNC2(&call->state_lock);
	return ret;
}