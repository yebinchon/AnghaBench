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
struct socket {struct sock* sk; } ;
struct sockaddr_ll {scalar_t__ sll_family; scalar_t__ sll_protocol; int /*<<< orphan*/  sll_ifindex; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 scalar_t__ AF_PACKET ; 
 int EINVAL ; 
 int FUNC0 (struct sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 

__attribute__((used)) static int FUNC2(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
	struct sockaddr_ll *sll = (struct sockaddr_ll *)uaddr;
	struct sock *sk = sock->sk;

	/*
	 *	Check legality
	 */

	if (addr_len < sizeof(struct sockaddr_ll))
		return -EINVAL;
	if (sll->sll_family != AF_PACKET)
		return -EINVAL;

	return FUNC0(sk, NULL, sll->sll_ifindex,
			      sll->sll_protocol ? : FUNC1(sk)->num);
}