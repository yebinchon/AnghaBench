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
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sock*) ; 
 scalar_t__ FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct sock *other)
{
	int connected;

	connected = FUNC1(sk, other);

	/* If other is SOCK_DEAD, we want to make sure we signal
	 * POLLOUT, such that a subsequent write() can get a
	 * -ECONNREFUSED. Otherwise, if we haven't queued any skbs
	 * to other and its full, we will hang waiting for POLLOUT.
	 */
	if (FUNC3(other) && !FUNC0(other, SOCK_DEAD))
		return 1;

	if (connected)
		FUNC2(sk, other);

	return 0;
}