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
struct ubifs_info {int dummy; } ;
struct ubifs_ch {scalar_t__ magic; int /*<<< orphan*/  len; } ;
struct shash_desc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  UBIFS_NODE_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,int) ; 
 int FUNC4 (struct ubifs_info*) ; 
 int FUNC5 (struct ubifs_info*,void*,struct shash_desc*) ; 
 int FUNC6 (struct ubifs_info*,struct shash_desc*,void*,int) ; 

__attribute__((used)) static int FUNC7(struct ubifs_info *c, void *node,
			     int len, struct shash_desc *hash)
{
	int auth_node_size = FUNC4(c);
	int err;

	while (1) {
		const struct ubifs_ch *ch = node;
		int nodelen = FUNC2(ch->len);

		FUNC3(c, len >= auth_node_size);

		if (len == auth_node_size)
			break;

		FUNC3(c, len > nodelen);
		FUNC3(c, ch->magic == FUNC1(UBIFS_NODE_MAGIC));

		err = FUNC6(c, hash, (void *)node, nodelen);
		if (err)
			return err;

		node += FUNC0(nodelen, 8);
		len -= FUNC0(nodelen, 8);
	}

	return FUNC5(c, node, hash);
}