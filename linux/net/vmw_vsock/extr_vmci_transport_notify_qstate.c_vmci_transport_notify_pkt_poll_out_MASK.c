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
struct sock {int dummy; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 struct vsock_sock* FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct vsock_sock*) ; 

__attribute__((used)) static int
FUNC2(struct sock *sk,
				   size_t target, bool *space_avail_now)
{
	s64 produce_q_free_space;
	struct vsock_sock *vsk = FUNC0(sk);

	produce_q_free_space = FUNC1(vsk);
	if (produce_q_free_space > 0) {
		*space_avail_now = true;
		return 0;
	} else if (produce_q_free_space == 0) {
		/* This is a connected socket but we can't currently send data.
		 * Nothing else to do.
		 */
		*space_avail_now = false;
	}

	return 0;
}