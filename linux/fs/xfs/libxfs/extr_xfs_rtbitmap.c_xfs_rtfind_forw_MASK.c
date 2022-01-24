#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
typedef  int xfs_rtword_t ;
typedef  int xfs_rtblock_t ;
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_4__ {int* b_addr; } ;
typedef  TYPE_1__ xfs_buf_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int XFS_NBWORD ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int
FUNC7(
	xfs_mount_t	*mp,		/* file system mount point */
	xfs_trans_t	*tp,		/* transaction pointer */
	xfs_rtblock_t	start,		/* starting block to look at */
	xfs_rtblock_t	limit,		/* last block to look at */
	xfs_rtblock_t	*rtblock)	/* out: start block found */
{
	xfs_rtword_t	*b;		/* current word in buffer */
	int		bit;		/* bit number in the word */
	xfs_rtblock_t	block;		/* bitmap block number */
	xfs_buf_t	*bp;		/* buf for the block */
	xfs_rtword_t	*bufp;		/* starting word in buffer */
	int		error;		/* error value */
	xfs_rtblock_t	i;		/* current bit number rel. to start */
	xfs_rtblock_t	lastbit;	/* last useful bit in the word */
	xfs_rtblock_t	len;		/* length of inspected area */
	xfs_rtword_t	mask;		/* mask of relevant bits for value */
	xfs_rtword_t	want;		/* mask for "good" values */
	xfs_rtword_t	wdiff;		/* difference from wanted value */
	int		word;		/* word number in the buffer */

	/*
	 * Compute and read in starting bitmap block for starting block.
	 */
	block = FUNC0(mp, start);
	error = FUNC5(mp, tp, block, 0, &bp);
	if (error) {
		return error;
	}
	bufp = bp->b_addr;
	/*
	 * Get the first word's index & point to it.
	 */
	word = FUNC1(mp, start);
	b = &bufp[word];
	bit = (int)(start & (XFS_NBWORD - 1));
	len = limit - start + 1;
	/*
	 * Compute match value, based on the bit at start: if 1 (free)
	 * then all-ones, else all-zeroes.
	 */
	want = (*b & ((xfs_rtword_t)1 << bit)) ? -1 : 0;
	/*
	 * If the starting position is not word-aligned, deal with the
	 * partial word.
	 */
	if (bit) {
		/*
		 * Calculate last (rightmost) bit number to look at,
		 * and mask for all the relevant bits in this word.
		 */
		lastbit = FUNC4(bit + len, XFS_NBWORD);
		mask = (((xfs_rtword_t)1 << (lastbit - bit)) - 1) << bit;
		/*
		 * Calculate the difference between the value there
		 * and what we're looking for.
		 */
		if ((wdiff = (*b ^ want) & mask)) {
			/*
			 * Different.  Mark where we are and return.
			 */
			FUNC6(tp, bp);
			i = FUNC3(wdiff) - bit;
			*rtblock = start + i - 1;
			return 0;
		}
		i = lastbit - bit;
		/*
		 * Go on to next block if that's where the next word is
		 * and we need the next word.
		 */
		if (++word == FUNC2(mp) && i < len) {
			/*
			 * If done with this block, get the previous one.
			 */
			FUNC6(tp, bp);
			error = FUNC5(mp, tp, ++block, 0, &bp);
			if (error) {
				return error;
			}
			b = bufp = bp->b_addr;
			word = 0;
		} else {
			/*
			 * Go on to the previous word in the buffer.
			 */
			b++;
		}
	} else {
		/*
		 * Starting on a word boundary, no partial word.
		 */
		i = 0;
	}
	/*
	 * Loop over whole words in buffers.  When we use up one buffer
	 * we move on to the next one.
	 */
	while (len - i >= XFS_NBWORD) {
		/*
		 * Compute difference between actual and desired value.
		 */
		if ((wdiff = *b ^ want)) {
			/*
			 * Different, mark where we are and return.
			 */
			FUNC6(tp, bp);
			i += FUNC3(wdiff);
			*rtblock = start + i - 1;
			return 0;
		}
		i += XFS_NBWORD;
		/*
		 * Go on to next block if that's where the next word is
		 * and we need the next word.
		 */
		if (++word == FUNC2(mp) && i < len) {
			/*
			 * If done with this block, get the next one.
			 */
			FUNC6(tp, bp);
			error = FUNC5(mp, tp, ++block, 0, &bp);
			if (error) {
				return error;
			}
			b = bufp = bp->b_addr;
			word = 0;
		} else {
			/*
			 * Go on to the next word in the buffer.
			 */
			b++;
		}
	}
	/*
	 * If not ending on a word boundary, deal with the last
	 * (partial) word.
	 */
	if ((lastbit = len - i)) {
		/*
		 * Calculate mask for all the relevant bits in this word.
		 */
		mask = ((xfs_rtword_t)1 << lastbit) - 1;
		/*
		 * Compute difference between actual and desired value.
		 */
		if ((wdiff = (*b ^ want) & mask)) {
			/*
			 * Different, mark where we are and return.
			 */
			FUNC6(tp, bp);
			i += FUNC3(wdiff);
			*rtblock = start + i - 1;
			return 0;
		} else
			i = len;
	}
	/*
	 * No match, return that we scanned the whole area.
	 */
	FUNC6(tp, bp);
	*rtblock = start + i - 1;
	return 0;
}