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
struct rxrpc_sock {scalar_t__ discard_new_call; struct rxrpc_backlog* backlog; } ;
struct rxrpc_backlog {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rxrpc_backlog* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxrpc_debug_id ; 
 scalar_t__ FUNC2 (struct rxrpc_sock*,struct rxrpc_backlog*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct rxrpc_sock *rx, gfp_t gfp)
{
	struct rxrpc_backlog *b = rx->backlog;

	if (!b) {
		b = FUNC1(sizeof(struct rxrpc_backlog), gfp);
		if (!b)
			return -ENOMEM;
		rx->backlog = b;
	}

	if (rx->discard_new_call)
		return 0;

	while (FUNC2(rx, b, NULL, NULL, 0, gfp,
					  FUNC0(&rxrpc_debug_id)) == 0)
		;

	return 0;
}