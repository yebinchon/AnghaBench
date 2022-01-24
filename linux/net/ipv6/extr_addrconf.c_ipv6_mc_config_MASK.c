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
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct sock*,int,struct in6_addr const*) ; 
 int FUNC2 (struct sock*,int,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static int FUNC5(struct sock *sk, bool join,
			  const struct in6_addr *addr, int ifindex)
{
	int ret;

	FUNC0();

	FUNC3(sk);
	if (join)
		ret = FUNC2(sk, ifindex, addr);
	else
		ret = FUNC1(sk, ifindex, addr);
	FUNC4(sk);

	return ret;
}