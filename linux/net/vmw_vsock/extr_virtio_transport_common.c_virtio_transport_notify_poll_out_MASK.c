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
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vsock_sock*) ; 

int
FUNC1(struct vsock_sock *vsk,
				 size_t target,
				 bool *space_avail_now)
{
	s64 free_space;

	free_space = FUNC0(vsk);
	if (free_space > 0)
		*space_avail_now = true;
	else if (free_space == 0)
		*space_avail_now = false;

	return 0;
}