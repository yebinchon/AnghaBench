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
struct xdp_sock {scalar_t__ state; struct net_device* dev; int /*<<< orphan*/  umem; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ XSK_BOUND ; 
 int /*<<< orphan*/  XSK_UNBOUND ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct xdp_sock*) ; 

__attribute__((used)) static void FUNC4(struct xdp_sock *xs)
{
	struct net_device *dev = xs->dev;

	if (xs->state != XSK_BOUND)
		return;
	FUNC0(xs->state, XSK_UNBOUND);

	/* Wait for driver to stop using the xdp socket. */
	FUNC3(xs->umem, xs);
	xs->dev = NULL;
	FUNC2();
	FUNC1(dev);
}