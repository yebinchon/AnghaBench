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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPSPURIOUS_RTX_HOSTQUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock const*,struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(const struct sock *sk,
				    const struct sk_buff *skb)
{
	if (FUNC3(FUNC1(sk, skb))) {
		FUNC0(FUNC2(sk),
			      LINUX_MIB_TCPSPURIOUS_RTX_HOSTQUEUES);
		return true;
	}
	return false;
}