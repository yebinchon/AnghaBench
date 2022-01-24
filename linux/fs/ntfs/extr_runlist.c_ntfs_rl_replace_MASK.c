#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ lcn; scalar_t__ length; scalar_t__ vcn; } ;
typedef  TYPE_1__ runlist_element ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ LCN_ENOENT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int) ; 
 TYPE_1__* FUNC6 (TYPE_1__*,int,int) ; 

__attribute__((used)) static inline runlist_element *FUNC7(runlist_element *dst,
		int dsize, runlist_element *src, int ssize, int loc)
{
	signed delta;
	bool left = false;	/* Left end of @src needs merging. */
	bool right = false;	/* Right end of @src needs merging. */
	int tail;		/* Start of tail of @dst. */
	int marker;		/* End of the inserted runs. */

	FUNC0(!dst);
	FUNC0(!src);

	/* First, see if the left and right ends need merging. */
	if ((loc + 1) < dsize)
		right = FUNC3(src + ssize - 1, dst + loc + 1);
	if (loc > 0)
		left = FUNC3(dst + loc - 1, src);
	/*
	 * Allocate some space.  We will need less if the left, right, or both
	 * ends get merged.  The -1 accounts for the run being replaced.
	 */
	delta = ssize - 1 - left - right;
	if (delta > 0) {
		dst = FUNC6(dst, dsize, dsize + delta);
		if (FUNC1(dst))
			return dst;
	}
	/*
	 * We are guaranteed to succeed from here so can start modifying the
	 * original runlists.
	 */

	/* First, merge the left and right ends, if necessary. */
	if (right)
		FUNC2(src + ssize - 1, dst + loc + 1);
	if (left)
		FUNC2(dst + loc - 1, src);
	/*
	 * Offset of the tail of @dst.  This needs to be moved out of the way
	 * to make space for the runs to be copied from @src, i.e. the first
	 * run of the tail of @dst.
	 * Nominally, @tail equals @loc + 1, i.e. location, skipping the
	 * replaced run.  However, if @right, then one of @dst's runs is
	 * already merged into @src.
	 */
	tail = loc + right + 1;
	/*
	 * First run after the @src runs that have been inserted, i.e. where
	 * the tail of @dst needs to be moved to.
	 * Nominally, @marker equals @loc + @ssize, i.e. location + number of
	 * runs in @src.  However, if @left, then the first run in @src has
	 * been merged with one in @dst.
	 */
	marker = loc + ssize - left;

	/* Move the tail of @dst out of the way, then copy in @src. */
	FUNC5(dst, marker, tail, dsize - tail);
	FUNC4(dst, loc, src, left, ssize - left);

	/* We may have changed the length of the file, so fix the end marker. */
	if (dsize - tail > 0 && dst[marker].lcn == LCN_ENOENT)
		dst[marker].vcn = dst[marker - 1].vcn + dst[marker - 1].length;
	return dst;
}