#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xdp_sock {scalar_t__ zc; int /*<<< orphan*/  tx; TYPE_1__* dev; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int ENOBUFS ; 
 int IFF_UP ; 
 scalar_t__ FUNC0 (int) ; 
 struct xdp_sock* FUNC1 (struct sock*) ; 
 int FUNC2 (struct sock*) ; 
 int FUNC3 (struct xdp_sock*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk)
{
	struct xdp_sock *xs = FUNC1(sk);

	if (FUNC0(!(xs->dev->flags & IFF_UP)))
		return -ENETDOWN;
	if (FUNC0(!xs->tx))
		return -ENOBUFS;

	return xs->zc ? FUNC3(xs) : FUNC2(sk);
}