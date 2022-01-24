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
typedef  int /*<<< orphan*/  u8 ;
struct rt6key {int /*<<< orphan*/  addr; } ;
struct in6_addr {int dummy; } ;
struct fib6_node {int fn_bit; int fn_flags; int /*<<< orphan*/  left; int /*<<< orphan*/  right; int /*<<< orphan*/  leaf; } ;
struct fib6_info {int dummy; } ;

/* Variables and functions */
 int RTN_RTINFO ; 
 scalar_t__ FUNC0 (struct in6_addr const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct in6_addr const*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fib6_node *FUNC3(struct fib6_node *root,
				       const struct in6_addr *addr,
				       int plen, int offset,
				       bool exact_match)
{
	struct fib6_node *fn, *prev = NULL;

	for (fn = root; fn ; ) {
		struct fib6_info *leaf = FUNC2(fn->leaf);
		struct rt6key *key;

		/* This node is being deleted */
		if (!leaf) {
			if (plen <= fn->fn_bit)
				goto out;
			else
				goto next;
		}

		key = (struct rt6key *)((u8 *)leaf + offset);

		/*
		 *	Prefix match
		 */
		if (plen < fn->fn_bit ||
		    !FUNC1(&key->addr, addr, fn->fn_bit))
			goto out;

		if (plen == fn->fn_bit)
			return fn;

		if (fn->fn_flags & RTN_RTINFO)
			prev = fn;

next:
		/*
		 *	We have more bits to go
		 */
		if (FUNC0(addr, fn->fn_bit))
			fn = FUNC2(fn->right);
		else
			fn = FUNC2(fn->left);
	}
out:
	if (exact_match)
		return NULL;
	else
		return prev;
}