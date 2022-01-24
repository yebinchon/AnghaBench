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
struct rxrpc_local {int /*<<< orphan*/  active_users; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_local*) ; 
 int /*<<< orphan*/  FUNC2 (struct rxrpc_local*) ; 

void FUNC3(struct rxrpc_local *local)
{
	unsigned int au;

	if (local) {
		au = FUNC0(&local->active_users);
		if (au == 0)
			FUNC2(local);
		else
			FUNC1(local);
	}
}