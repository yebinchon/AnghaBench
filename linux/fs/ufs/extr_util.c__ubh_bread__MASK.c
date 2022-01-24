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
typedef  int u64 ;
struct ufs_sb_private_info {int s_fmask; int s_fshift; } ;
struct ufs_buffer_head {int fragment; int count; int /*<<< orphan*/ ** bh; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int UFS_MAXFRAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_buffer_head*) ; 
 struct ufs_buffer_head* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct super_block*,int) ; 

struct ufs_buffer_head * FUNC4 (struct ufs_sb_private_info * uspi,
	struct super_block *sb, u64 fragment, u64 size)
{
	struct ufs_buffer_head * ubh;
	unsigned i, j ;
	u64  count = 0;
	if (size & ~uspi->s_fmask)
		return NULL;
	count = size >> uspi->s_fshift;
	if (count > UFS_MAXFRAG)
		return NULL;
	ubh = FUNC2 (sizeof (struct ufs_buffer_head), GFP_NOFS);
	if (!ubh)
		return NULL;
	ubh->fragment = fragment;
	ubh->count = count;
	for (i = 0; i < count; i++)
		if (!(ubh->bh[i] = FUNC3(sb, fragment + i)))
			goto failed;
	for (; i < UFS_MAXFRAG; i++)
		ubh->bh[i] = NULL;
	return ubh;
failed:
	for (j = 0; j < i; j++)
		FUNC0 (ubh->bh[j]);
	FUNC1(ubh);
	return NULL;
}