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
struct rt6key {int /*<<< orphan*/  plen; int /*<<< orphan*/  addr; } ;
struct lookup_args {scalar_t__ offset; int /*<<< orphan*/  addr; } ;
struct fib6_node {int fn_flags; int /*<<< orphan*/  parent; int /*<<< orphan*/  leaf; int /*<<< orphan*/  left; int /*<<< orphan*/  right; int /*<<< orphan*/  fn_bit; } ;
struct fib6_info {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 struct fib6_node* FUNC0 (struct fib6_node*) ; 
 int RTN_ROOT ; 
 int RTN_RTINFO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct fib6_node *FUNC5(struct fib6_node *root,
					    struct lookup_args *args)
{
	struct fib6_node *fn;
	__be32 dir;

	if (FUNC4(args->offset == 0))
		return NULL;

	/*
	 *	Descend on a tree
	 */

	fn = root;

	for (;;) {
		struct fib6_node *next;

		dir = FUNC1(args->addr, fn->fn_bit);

		next = dir ? FUNC3(fn->right) :
			     FUNC3(fn->left);

		if (next) {
			fn = next;
			continue;
		}
		break;
	}

	while (fn) {
		struct fib6_node *subtree = FUNC0(fn);

		if (subtree || fn->fn_flags & RTN_RTINFO) {
			struct fib6_info *leaf = FUNC3(fn->leaf);
			struct rt6key *key;

			if (!leaf)
				goto backtrack;

			key = (struct rt6key *) ((u8 *)leaf + args->offset);

			if (FUNC2(&key->addr, args->addr, key->plen)) {
#ifdef CONFIG_IPV6_SUBTREES
				if (subtree) {
					struct fib6_node *sfn;
					sfn = fib6_node_lookup_1(subtree,
								 args + 1);
					if (!sfn)
						goto backtrack;
					fn = sfn;
				}
#endif
				if (fn->fn_flags & RTN_RTINFO)
					return fn;
			}
		}
backtrack:
		if (fn->fn_flags & RTN_ROOT)
			break;

		fn = FUNC3(fn->parent);
	}

	return NULL;
}