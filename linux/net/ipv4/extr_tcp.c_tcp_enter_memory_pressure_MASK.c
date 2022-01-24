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
 int /*<<< orphan*/  LINUX_MIB_TCPMEMORYPRESSURES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  tcp_memory_pressure ; 

void FUNC4(struct sock *sk)
{
	unsigned long val;

	if (FUNC1(tcp_memory_pressure))
		return;
	val = jiffies;

	if (!val)
		val--;
	if (!FUNC2(&tcp_memory_pressure, 0, val))
		FUNC0(FUNC3(sk), LINUX_MIB_TCPMEMORYPRESSURES);
}