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
typedef  int /*<<< orphan*/  u32 ;
struct netlink_sock {int /*<<< orphan*/  portid; int /*<<< orphan*/  sk; } ;
struct netlink_compare_arg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_compare_arg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int netlink_compare_arg_len ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline u32 FUNC3(const void *data, u32 len, u32 seed)
{
	const struct netlink_sock *nlk = data;
	struct netlink_compare_arg arg;

	FUNC1(&arg, FUNC2(&nlk->sk), nlk->portid);
	return FUNC0((u32 *)&arg, netlink_compare_arg_len / sizeof(u32), seed);
}