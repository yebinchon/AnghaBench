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
struct ocfs2_reservation_map {int dummy; } ;
struct ocfs2_alloc_reservation {int r_flags; int r_start; int r_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int ENOSPC ; 
 int OCFS2_RESV_FLAG_TMP ; 
 scalar_t__ FUNC1 (struct ocfs2_reservation_map*) ; 
 scalar_t__ FUNC2 (struct ocfs2_alloc_reservation*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*,unsigned int) ; 
 unsigned int FUNC4 (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*) ; 
 int /*<<< orphan*/  resv_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

int FUNC8(struct ocfs2_reservation_map *resmap,
			   struct ocfs2_alloc_reservation *resv,
			   int *cstart, int *clen)
{
	if (resv == NULL || FUNC1(resmap))
		return -ENOSPC;

	FUNC5(&resv_lock);

	if (FUNC2(resv)) {
		/*
		 * We don't want to over-allocate for temporary
		 * windows. Otherwise, we run the risk of fragmenting the
		 * allocation space.
		 */
		unsigned int wanted = FUNC4(resmap, resv);

		if ((resv->r_flags & OCFS2_RESV_FLAG_TMP) || wanted < *clen)
			wanted = *clen;

		/*
		 * Try to get a window here. If it works, we must fall
		 * through and test the bitmap . This avoids some
		 * ping-ponging of windows due to non-reserved space
		 * being allocation before we initialize a window for
		 * that inode.
		 */
		FUNC3(resmap, resv, wanted);
		FUNC7(resv->r_start, resv->r_len);
	}

	FUNC0(FUNC2(resv));

	*cstart = resv->r_start;
	*clen = resv->r_len;

	FUNC6(&resv_lock);
	return 0;
}