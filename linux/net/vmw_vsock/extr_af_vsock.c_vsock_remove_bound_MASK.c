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
struct vsock_sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vsock_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct vsock_sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vsock_table_lock ; 

void FUNC4(struct vsock_sock *vsk)
{
	FUNC2(&vsock_table_lock);
	if (FUNC0(vsk))
		FUNC1(vsk);
	FUNC3(&vsock_table_lock);
}