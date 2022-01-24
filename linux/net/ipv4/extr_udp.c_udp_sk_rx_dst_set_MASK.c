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
struct sock {int /*<<< orphan*/  sk_rx_dst; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 struct dst_entry* FUNC2 (int /*<<< orphan*/ *,struct dst_entry*) ; 

bool FUNC3(struct sock *sk, struct dst_entry *dst)
{
	struct dst_entry *old;

	if (FUNC0(dst)) {
		old = FUNC2(&sk->sk_rx_dst, dst);
		FUNC1(old);
		return old != dst;
	}
	return false;
}