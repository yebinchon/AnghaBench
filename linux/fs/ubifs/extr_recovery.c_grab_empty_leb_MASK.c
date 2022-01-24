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
struct ubifs_info {int gc_lnum; int /*<<< orphan*/  bi; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPROPS_INDEX ; 
 int /*<<< orphan*/  LPROPS_NC ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct ubifs_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,char*) ; 
 int FUNC5 (struct ubifs_info*) ; 
 int FUNC6 (struct ubifs_info*) ; 

__attribute__((used)) static int FUNC7(struct ubifs_info *c)
{
	int lnum, err;

	/*
	 * Note, it is very important to first search for an empty LEB and then
	 * run the commit, not vice-versa. The reason is that there might be
	 * only one empty LEB at the moment, the one which has been the
	 * @c->gc_lnum just before the power cut happened. During the regular
	 * UBIFS operation (not now) @c->gc_lnum is marked as "taken", so no
	 * one but GC can grab it. But at this moment this single empty LEB is
	 * not marked as taken, so if we run commit - what happens? Right, the
	 * commit will grab it and write the index there. Remember that the
	 * index always expands as long as there is free space, and it only
	 * starts consolidating when we run out of space.
	 *
	 * IOW, if we run commit now, we might not be able to find a free LEB
	 * after this.
	 */
	lnum = FUNC5(c);
	if (lnum < 0) {
		FUNC4(c, "could not find an empty LEB");
		FUNC3(c);
		FUNC2(c, &c->bi);
		return lnum;
	}

	/* Reset the index flag */
	err = FUNC1(c, lnum, LPROPS_NC, LPROPS_NC, 0,
				  LPROPS_INDEX, 0);
	if (err)
		return err;

	c->gc_lnum = lnum;
	FUNC0("found empty LEB %d, run commit", lnum);

	return FUNC6(c);
}