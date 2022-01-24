#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  inet_rcv_saddr; } ;
struct TYPE_3__ {unsigned int udp_portaddr_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int FUNC4 (struct sock*,unsigned short,unsigned int) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 

int FUNC6(struct sock *sk, unsigned short snum)
{
	unsigned int hash2_nulladdr =
		FUNC2(FUNC3(sk), FUNC0(INADDR_ANY), snum);
	unsigned int hash2_partial =
		FUNC2(FUNC3(sk), FUNC1(sk)->inet_rcv_saddr, 0);

	/* precompute partial secondary hash */
	FUNC5(sk)->udp_portaddr_hash = hash2_partial;
	return FUNC4(sk, snum, hash2_nulladdr);
}