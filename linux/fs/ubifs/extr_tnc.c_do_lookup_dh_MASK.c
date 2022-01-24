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
typedef  int /*<<< orphan*/  uint32_t ;
struct ubifs_znode {int dummy; } ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; } ;
struct ubifs_dent_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*,union ubifs_key const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,union ubifs_key const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ubifs_info*,union ubifs_key const*,struct ubifs_dent_node*,int /*<<< orphan*/ ,struct ubifs_znode**,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ubifs_info*,union ubifs_key*,struct ubifs_znode**,int*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct ubifs_info *c, const union ubifs_key *key,
			struct ubifs_dent_node *dent, uint32_t cookie)
{
	int n, err;
	struct ubifs_znode *znode;
	union ubifs_key start_key;

	FUNC6(c, FUNC0(c, key));

	FUNC2(c, &start_key, FUNC1(c, key));

	FUNC3(&c->tnc_mutex);
	err = FUNC7(c, &start_key, &znode, &n);
	if (FUNC8(err < 0))
		goto out_unlock;

	err = FUNC5(c, key, dent, cookie, &znode, &n, err);

out_unlock:
	FUNC4(&c->tnc_mutex);
	return err;
}