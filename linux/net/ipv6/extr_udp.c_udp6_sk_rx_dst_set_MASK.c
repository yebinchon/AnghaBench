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
struct sock {int dummy; } ;
struct rt6_info {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_dst_cookie; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt6_info const*) ; 
 scalar_t__ FUNC2 (struct sock*,struct dst_entry*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, struct dst_entry *dst)
{
	if (FUNC2(sk, dst)) {
		const struct rt6_info *rt = (const struct rt6_info *)dst;

		FUNC0(sk)->rx_dst_cookie = FUNC1(rt);
	}
}