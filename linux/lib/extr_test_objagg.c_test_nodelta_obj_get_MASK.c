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
struct world {unsigned int root_count; int /*<<< orphan*/  next_root_buf; } ;
struct TYPE_2__ {unsigned int id; } ;
struct root {int /*<<< orphan*/  buf; TYPE_1__ key; } ;
struct objagg_obj {int dummy; } ;
struct objagg {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct objagg_obj*) ; 
 int FUNC1 (struct objagg_obj*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct objagg*,struct objagg_obj*) ; 
 struct root* FUNC4 (struct objagg_obj*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct objagg_obj* FUNC7 (struct world*,struct objagg*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct world *world, struct objagg *objagg,
				unsigned int key_id, bool should_create_root)
{
	unsigned int orig_root_count = world->root_count;
	struct objagg_obj *objagg_obj;
	const struct root *root;
	int err;

	if (should_create_root)
		FUNC6(world->next_root_buf,
			      sizeof(world->next_root_buf));

	objagg_obj = FUNC7(world, objagg, key_id);
	if (FUNC0(objagg_obj)) {
		FUNC5("Key %u: Failed to get object.\n", key_id);
		return FUNC1(objagg_obj);
	}
	if (should_create_root) {
		if (world->root_count != orig_root_count + 1) {
			FUNC5("Key %u: Root was not created\n", key_id);
			err = -EINVAL;
			goto err_check_root_count;
		}
	} else {
		if (world->root_count != orig_root_count) {
			FUNC5("Key %u: Root was incorrectly created\n",
			       key_id);
			err = -EINVAL;
			goto err_check_root_count;
		}
	}
	root = FUNC4(objagg_obj);
	if (root->key.id != key_id) {
		FUNC5("Key %u: Root has unexpected key id\n", key_id);
		err = -EINVAL;
		goto err_check_key_id;
	}
	if (should_create_root &&
	    FUNC2(world->next_root_buf, root->buf, sizeof(root->buf))) {
		FUNC5("Key %u: Buffer does not match the expected content\n",
		       key_id);
		err = -EINVAL;
		goto err_check_buf;
	}
	return 0;

err_check_buf:
err_check_key_id:
err_check_root_count:
	FUNC3(objagg, objagg_obj);
	return err;
}