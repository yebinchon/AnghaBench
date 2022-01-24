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
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int /*<<< orphan*/  name; int /*<<< orphan*/  nlen; } ;
struct fscrypt_name {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ubifs_info*,union ubifs_key const*,void*,struct fscrypt_name const*) ; 
 int FUNC1 (struct fscrypt_name const*) ; 
 int /*<<< orphan*/  FUNC2 (struct fscrypt_name const*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct ubifs_info*,union ubifs_key const*,void*) ; 

int FUNC6(struct ubifs_info *c, const union ubifs_key *key,
			void *node, const struct fscrypt_name *nm)
{
	int err, len;
	const struct ubifs_dent_node *dent = node;

	/*
	 * We assume that in most of the cases there are no name collisions and
	 * 'ubifs_tnc_lookup()' returns us the right direntry.
	 */
	err = FUNC5(c, key, node);
	if (err)
		return err;

	len = FUNC3(dent->nlen);
	if (FUNC1(nm) == len && !FUNC4(dent->name, FUNC2(nm), len))
		return 0;

	/*
	 * Unluckily, there are hash collisions and we have to iterate over
	 * them look at each direntry with colliding name hash sequentially.
	 */

	return FUNC0(c, key, node, nm);
}