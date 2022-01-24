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
struct rhashtable_compare_arg {struct netlink_compare_arg* key; } ;
struct netlink_sock {scalar_t__ portid; int /*<<< orphan*/  sk; } ;
struct netlink_compare_arg {scalar_t__ portid; int /*<<< orphan*/  pnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC3(struct rhashtable_compare_arg *arg,
				  const void *ptr)
{
	const struct netlink_compare_arg *x = arg->key;
	const struct netlink_sock *nlk = ptr;

	return nlk->portid != x->portid ||
	       !FUNC0(FUNC2(&nlk->sk), FUNC1(&x->pnet));
}