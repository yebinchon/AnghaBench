#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_7__ {int /*<<< orphan*/  bh; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int DEPTH ; 
 int EAGAIN ; 
 int EIO ; 
 int FUNC0 (struct inode*,int,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct inode*,int,int*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 scalar_t__ FUNC7 (struct inode*,TYPE_1__*,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC8(struct inode * inode, sector_t block,
			struct buffer_head *bh, int create)
{
	int err = -EIO;
	int offsets[DEPTH];
	Indirect chain[DEPTH];
	Indirect *partial;
	int left;
	int depth = FUNC2(inode, block, offsets);

	if (depth == 0)
		goto out;

reread:
	partial = FUNC4(inode, depth, offsets, chain, &err);

	/* Simplest case - block found, no allocation needed */
	if (!partial) {
got_it:
		FUNC5(bh, inode->i_sb, FUNC1(chain[depth-1].key));
		/* Clean up and exit */
		partial = chain+depth-1; /* the whole chain */
		goto cleanup;
	}

	/* Next simple case - plain lookup or failed read of indirect block */
	if (!create || err == -EIO) {
cleanup:
		while (partial > chain) {
			FUNC3(partial->bh);
			partial--;
		}
out:
		return err;
	}

	/*
	 * Indirect block might be removed by truncate while we were
	 * reading it. Handling of that case (forget what we've got and
	 * reread) is taken out of the main path.
	 */
	if (err == -EAGAIN)
		goto changed;

	left = (chain + depth) - partial;
	err = FUNC0(inode, left, offsets+(partial-chain), partial);
	if (err)
		goto cleanup;

	if (FUNC7(inode, chain, partial, left) < 0)
		goto changed;

	FUNC6(bh);
	goto got_it;

changed:
	while (partial > chain) {
		FUNC3(partial->bh);
		partial--;
	}
	goto reread;
}