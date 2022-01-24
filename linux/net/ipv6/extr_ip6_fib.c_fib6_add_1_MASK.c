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
typedef  int /*<<< orphan*/  u8 ;
struct in6_addr {int dummy; } ;
struct rt6key {struct in6_addr addr; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {scalar_t__ fib6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib6_table {int /*<<< orphan*/  tb6_lock; } ;
struct fib6_node {int fn_bit; int fn_flags; int /*<<< orphan*/  left; int /*<<< orphan*/  right; int /*<<< orphan*/  parent; int /*<<< orphan*/  leaf; } ;
struct fib6_info {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct fib6_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct fib6_node*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int RTN_RTINFO ; 
 int RTN_TL_ROOT ; 
 int FUNC4 (struct in6_addr*,struct in6_addr*,int) ; 
 scalar_t__ FUNC5 (struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct in6_addr*,struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct fib6_node* FUNC10 (struct net*) ; 
 int /*<<< orphan*/  FUNC11 (struct net*,struct fib6_node*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct fib6_node*) ; 
 void* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fib6_node *FUNC16(struct net *net,
				    struct fib6_table *table,
				    struct fib6_node *root,
				    struct in6_addr *addr, int plen,
				    int offset, int allow_create,
				    int replace_required,
				    struct netlink_ext_ack *extack)
{
	struct fib6_node *fn, *in, *ln;
	struct fib6_node *pn = NULL;
	struct rt6key *key;
	int	bit;
	__be32	dir = 0;

	FUNC3("fib6_add_1\n");

	/* insert node in tree */

	fn = root;

	do {
		struct fib6_info *leaf = FUNC15(fn->leaf,
					    FUNC9(&table->tb6_lock));
		key = (struct rt6key *)((u8 *)leaf + offset);

		/*
		 *	Prefix match
		 */
		if (plen < fn->fn_bit ||
		    !FUNC8(&key->addr, addr, fn->fn_bit)) {
			if (!allow_create) {
				if (replace_required) {
					FUNC1(extack,
						       "Can not replace route - no match found");
					FUNC12("Can't replace route, no match found\n");
					return FUNC0(-ENOENT);
				}
				FUNC12("NLM_F_CREATE should be set when creating new route\n");
			}
			goto insert_above;
		}

		/*
		 *	Exact match ?
		 */

		if (plen == fn->fn_bit) {
			/* clean up an intermediate node */
			if (!(fn->fn_flags & RTN_RTINFO)) {
				FUNC2(fn->leaf, NULL);
				FUNC7(leaf);
			/* remove null_entry in the root node */
			} else if (fn->fn_flags & RTN_TL_ROOT &&
				   FUNC13(fn->leaf) ==
				   net->ipv6.fib6_null_entry) {
				FUNC2(fn->leaf, NULL);
			}

			return fn;
		}

		/*
		 *	We have more bits to go
		 */

		/* Try to walk down on tree. */
		dir = FUNC5(addr, fn->fn_bit);
		pn = fn;
		fn = dir ?
		     FUNC15(fn->right,
					FUNC9(&table->tb6_lock)) :
		     FUNC15(fn->left,
					FUNC9(&table->tb6_lock));
	} while (fn);

	if (!allow_create) {
		/* We should not create new node because
		 * NLM_F_REPLACE was specified without NLM_F_CREATE
		 * I assume it is safe to require NLM_F_CREATE when
		 * REPLACE flag is used! Later we may want to remove the
		 * check for replace_required, because according
		 * to netlink specification, NLM_F_CREATE
		 * MUST be specified if new route is created.
		 * That would keep IPv6 consistent with IPv4
		 */
		if (replace_required) {
			FUNC1(extack,
				       "Can not replace route - no match found");
			FUNC12("Can't replace route, no match found\n");
			return FUNC0(-ENOENT);
		}
		FUNC12("NLM_F_CREATE should be set when creating new route\n");
	}
	/*
	 *	We walked to the bottom of tree.
	 *	Create new leaf node without children.
	 */

	ln = FUNC10(net);

	if (!ln)
		return FUNC0(-ENOMEM);
	ln->fn_bit = plen;
	FUNC2(ln->parent, pn);

	if (dir)
		FUNC14(pn->right, ln);
	else
		FUNC14(pn->left, ln);

	return ln;


insert_above:
	/*
	 * split since we don't have a common prefix anymore or
	 * we have a less significant route.
	 * we've to insert an intermediate node on the list
	 * this new node will point to the one we need to create
	 * and the current
	 */

	pn = FUNC15(fn->parent,
				       FUNC9(&table->tb6_lock));

	/* find 1st bit in difference between the 2 addrs.

	   See comment in __ipv6_addr_diff: bit may be an invalid value,
	   but if it is >= plen, the value is ignored in any case.
	 */

	bit = FUNC4(addr, &key->addr, sizeof(*addr));

	/*
	 *		(intermediate)[in]
	 *	          /	   \
	 *	(new leaf node)[ln] (old node)[fn]
	 */
	if (plen > bit) {
		in = FUNC10(net);
		ln = FUNC10(net);

		if (!in || !ln) {
			if (in)
				FUNC11(net, in);
			if (ln)
				FUNC11(net, ln);
			return FUNC0(-ENOMEM);
		}

		/*
		 * new intermediate node.
		 * RTN_RTINFO will
		 * be off since that an address that chooses one of
		 * the branches would not match less specific routes
		 * in the other branch
		 */

		in->fn_bit = bit;

		FUNC2(in->parent, pn);
		in->leaf = fn->leaf;
		FUNC6(FUNC15(in->leaf,
				FUNC9(&table->tb6_lock)));

		/* update parent pointer */
		if (dir)
			FUNC14(pn->right, in);
		else
			FUNC14(pn->left, in);

		ln->fn_bit = plen;

		FUNC2(ln->parent, in);
		FUNC14(fn->parent, in);

		if (FUNC5(addr, bit)) {
			FUNC14(in->right, ln);
			FUNC14(in->left, fn);
		} else {
			FUNC14(in->left, ln);
			FUNC14(in->right, fn);
		}
	} else { /* plen <= bit */

		/*
		 *		(new leaf node)[ln]
		 *	          /	   \
		 *	     (old node)[fn] NULL
		 */

		ln = FUNC10(net);

		if (!ln)
			return FUNC0(-ENOMEM);

		ln->fn_bit = plen;

		FUNC2(ln->parent, pn);

		if (FUNC5(&key->addr, plen))
			FUNC2(ln->right, fn);
		else
			FUNC2(ln->left, fn);

		FUNC14(fn->parent, ln);

		if (dir)
			FUNC14(pn->right, ln);
		else
			FUNC14(pn->left, ln);
	}
	return ln;
}