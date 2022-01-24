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
struct sock {int /*<<< orphan*/  sk_v6_rcv_saddr; } ;
struct TYPE_2__ {unsigned int udp_portaddr_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  in6addr_any ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int FUNC2 (struct sock*,unsigned short,unsigned int) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 

int FUNC4(struct sock *sk, unsigned short snum)
{
	unsigned int hash2_nulladdr =
		FUNC0(FUNC1(sk), &in6addr_any, snum);
	unsigned int hash2_partial =
		FUNC0(FUNC1(sk), &sk->sk_v6_rcv_saddr, 0);

	/* precompute partial secondary hash */
	FUNC3(sk)->udp_portaddr_hash = hash2_partial;
	return FUNC2(sk, snum, hash2_nulladdr);
}