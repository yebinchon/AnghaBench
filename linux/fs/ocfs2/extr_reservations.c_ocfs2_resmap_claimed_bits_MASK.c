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
typedef  int u32 ;
struct ocfs2_reservation_map {int dummy; } ;
struct ocfs2_alloc_reservation {int r_start; int r_last_start; int r_last_len; int /*<<< orphan*/  r_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_reservation_map*) ; 
 scalar_t__ FUNC3 (struct ocfs2_reservation_map*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_alloc_reservation*) ; 
 unsigned int FUNC5 (struct ocfs2_alloc_reservation*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*) ; 
 int /*<<< orphan*/  resv_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,unsigned int,int,int,unsigned int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,unsigned int,int /*<<< orphan*/ ,int,int) ; 

void FUNC11(struct ocfs2_reservation_map *resmap,
			       struct ocfs2_alloc_reservation *resv,
			       u32 cstart, u32 clen)
{
	unsigned int cend = cstart + clen - 1;

	if (resmap == NULL || FUNC3(resmap))
		return;

	if (resv == NULL)
		return;

	FUNC0(cstart != resv->r_start);

	FUNC7(&resv_lock);

	FUNC9(cstart, cend, clen, resv->r_start,
					      FUNC5(resv), resv->r_len,
					      resv->r_last_start,
					      resv->r_last_len);

	FUNC0(cstart < resv->r_start);
	FUNC0(cstart > FUNC5(resv));
	FUNC0(cend > FUNC5(resv));

	FUNC1(resmap, resv, cstart, cend);
	resv->r_last_start = cstart;
	resv->r_last_len = clen;

	/*
	 * May have been discarded above from
	 * ocfs2_adjust_resv_from_alloc().
	 */
	if (!FUNC4(resv))
		FUNC6(resmap, resv);

	FUNC10(resv->r_start, FUNC5(resv),
					    resv->r_len, resv->r_last_start,
					    resv->r_last_len);

	FUNC2(resmap);

	FUNC8(&resv_lock);
}