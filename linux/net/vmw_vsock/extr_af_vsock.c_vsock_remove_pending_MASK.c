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
struct vsock_sock {int /*<<< orphan*/  pending_links; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct vsock_sock* FUNC2 (struct sock*) ; 

void FUNC3(struct sock *listener, struct sock *pending)
{
	struct vsock_sock *vpending = FUNC2(pending);

	FUNC0(&vpending->pending_links);
	FUNC1(listener);
	FUNC1(pending);
}