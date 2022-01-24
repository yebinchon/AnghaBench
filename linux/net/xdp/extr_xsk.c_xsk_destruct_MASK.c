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
struct xdp_sock {int /*<<< orphan*/  umem; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct xdp_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	struct xdp_sock *xs = FUNC3(sk);

	if (!FUNC1(sk, SOCK_DEAD))
		return;

	FUNC2(xs->umem);

	FUNC0(sk);
}