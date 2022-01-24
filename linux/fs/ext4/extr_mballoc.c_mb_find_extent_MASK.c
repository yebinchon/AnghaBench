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
struct ext4_free_extent {int fe_len; int fe_start; int /*<<< orphan*/  fe_group; int /*<<< orphan*/  fe_logical; } ;
struct ext4_buddy {void* bd_bitmap; int /*<<< orphan*/  bd_sb; int /*<<< orphan*/  bd_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct ext4_buddy*,int,int*) ; 
 int FUNC7 (struct ext4_buddy*,int) ; 
 scalar_t__ FUNC8 (int,void*) ; 

__attribute__((used)) static int FUNC9(struct ext4_buddy *e4b, int block,
				int needed, struct ext4_free_extent *ex)
{
	int next = block;
	int max, order;
	void *buddy;

	FUNC3(FUNC5(e4b->bd_sb, e4b->bd_group));
	FUNC0(ex == NULL);

	buddy = FUNC6(e4b, 0, &max);
	FUNC0(buddy == NULL);
	FUNC0(block >= max);
	if (FUNC8(block, buddy)) {
		ex->fe_len = 0;
		ex->fe_start = 0;
		ex->fe_group = 0;
		return 0;
	}

	/* find actual order */
	order = FUNC7(e4b, block);
	block = block >> order;

	ex->fe_len = 1 << order;
	ex->fe_start = block << order;
	ex->fe_group = e4b->bd_group;

	/* calc difference from given start */
	next = next - ex->fe_start;
	ex->fe_len -= next;
	ex->fe_start += next;

	while (needed > ex->fe_len &&
	       FUNC6(e4b, order, &max)) {

		if (block + 1 >= max)
			break;

		next = (block + 1) * (1 << order);
		if (FUNC8(next, e4b->bd_bitmap))
			break;

		order = FUNC7(e4b, next);

		block = next >> order;
		ex->fe_len += 1 << order;
	}

	if (ex->fe_start + ex->fe_len > FUNC1(e4b->bd_sb)) {
		/* Should never happen! (but apparently sometimes does?!?) */
		FUNC2(1);
		FUNC4(e4b->bd_sb, "corruption or bug in mb_find_extent "
			   "block=%d, order=%d needed=%d ex=%u/%d/%d@%u",
			   block, order, needed, ex->fe_group, ex->fe_start,
			   ex->fe_len, ex->fe_logical);
		ex->fe_len = 0;
		ex->fe_start = 0;
		ex->fe_group = 0;
	}
	return ex->fe_len;
}