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
struct world {unsigned int root_count; } ;
struct objagg {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct world*,struct objagg*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct world *world, struct objagg *objagg,
				unsigned int key_id, bool should_destroy_root)
{
	unsigned int orig_root_count = world->root_count;

	FUNC1(world, objagg, key_id);

	if (should_destroy_root) {
		if (world->root_count != orig_root_count - 1) {
			FUNC0("Key %u: Root was not destroyed\n", key_id);
			return -EINVAL;
		}
	} else {
		if (world->root_count != orig_root_count) {
			FUNC0("Key %u: Root was incorrectly destroyed\n",
			       key_id);
			return -EINVAL;
		}
	}
	return 0;
}