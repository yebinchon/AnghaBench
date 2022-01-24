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
struct xfs_mount {int dummy; } ;
struct xfs_buf_map {int /*<<< orphan*/  bm_len; int /*<<< orphan*/  bm_bn; } ;
struct xfs_bmbt_irec {scalar_t__ br_startblock; int /*<<< orphan*/  br_blockcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DELAYSTARTBLOCK ; 
 int ENOMEM ; 
 scalar_t__ HOLESTARTBLOCK ; 
 int /*<<< orphan*/  KM_NOFS ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,scalar_t__) ; 
 struct xfs_buf_map* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(
	struct xfs_mount	*mp,
	struct xfs_buf_map	**mapp,
	int			*nmaps,
	struct xfs_bmbt_irec	*irecs,
	int			nirecs)
{
	struct xfs_buf_map	*map;
	int			i;

	FUNC0(*nmaps == 1);
	FUNC0(nirecs >= 1);

	if (nirecs > 1) {
		map = FUNC3(nirecs * sizeof(struct xfs_buf_map),
				  KM_NOFS);
		if (!map)
			return -ENOMEM;
		*mapp = map;
	}

	*nmaps = nirecs;
	map = *mapp;
	for (i = 0; i < *nmaps; i++) {
		FUNC0(irecs[i].br_startblock != DELAYSTARTBLOCK &&
		       irecs[i].br_startblock != HOLESTARTBLOCK);
		map[i].bm_bn = FUNC2(mp, irecs[i].br_startblock);
		map[i].bm_len = FUNC1(mp, irecs[i].br_blockcount);
	}
	return 0;
}