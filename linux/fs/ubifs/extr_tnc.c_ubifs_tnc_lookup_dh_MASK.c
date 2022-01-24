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
typedef  union ubifs_key {int dummy; } ubifs_key ;
typedef  scalar_t__ uint32_t ;
struct ubifs_info {int /*<<< orphan*/  double_hash; } ;
struct ubifs_dent_node {int /*<<< orphan*/  cookie; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct ubifs_info*,union ubifs_key const*,void*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ubifs_info*,union ubifs_key const*,void*) ; 

int FUNC3(struct ubifs_info *c, const union ubifs_key *key,
			void *node, uint32_t cookie)
{
	int err;
	const struct ubifs_dent_node *dent = node;

	if (!c->double_hash)
		return -EOPNOTSUPP;

	/*
	 * We assume that in most of the cases there are no name collisions and
	 * 'ubifs_tnc_lookup()' returns us the right direntry.
	 */
	err = FUNC2(c, key, node);
	if (err)
		return err;

	if (FUNC1(dent->cookie) == cookie)
		return 0;

	/*
	 * Unluckily, there are hash collisions and we have to iterate over
	 * them look at each direntry with colliding name hash sequentially.
	 */
	return FUNC0(c, key, node, cookie);
}