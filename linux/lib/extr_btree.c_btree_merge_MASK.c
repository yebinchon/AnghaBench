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
struct btree_head {int /*<<< orphan*/  height; int /*<<< orphan*/  node; } ;
struct btree_geo {int /*<<< orphan*/  keylen; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_KEYLEN ; 
 int /*<<< orphan*/  FUNC1 (struct btree_head*) ; 
 int FUNC2 (struct btree_head*,struct btree_geo*,unsigned long*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btree_head*,struct btree_geo*,unsigned long*) ; 
 void* FUNC4 (struct btree_head*,struct btree_geo*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct btree_head*,struct btree_geo*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long*,unsigned long*,int /*<<< orphan*/ ) ; 

int FUNC7(struct btree_head *target, struct btree_head *victim,
		struct btree_geo *geo, gfp_t gfp)
{
	unsigned long key[MAX_KEYLEN];
	unsigned long dup[MAX_KEYLEN];
	void *val;
	int err;

	FUNC0(target == victim);

	if (!(target->node)) {
		/* target is empty, just copy fields over */
		target->node = victim->node;
		target->height = victim->height;
		FUNC1(victim);
		return 0;
	}

	/* TODO: This needs some optimizations.  Currently we do three tree
	 * walks to remove a single object from the victim.
	 */
	for (;;) {
		if (!FUNC3(victim, geo, key))
			break;
		val = FUNC4(victim, geo, key);
		err = FUNC2(target, geo, key, val, gfp);
		if (err)
			return err;
		/* We must make a copy of the key, as the original will get
		 * mangled inside btree_remove. */
		FUNC6(dup, key, geo->keylen);
		FUNC5(victim, geo, dup);
	}
	return 0;
}