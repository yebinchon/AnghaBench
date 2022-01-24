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
struct super_block {int s_blocksize; } ;
struct ocfs2_recovery_chunk {int rc_chunk; int /*<<< orphan*/  rc_list; void* rc_bitmap; } ;
struct ocfs2_local_disk_chunk {int /*<<< orphan*/  dqc_bitmap; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_recovery_chunk*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct super_block*) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb,
				    struct ocfs2_local_disk_chunk *dchunk,
				    int chunk,
				    struct list_head *head)
{
	struct ocfs2_recovery_chunk *rc;

	rc = FUNC1(sizeof(struct ocfs2_recovery_chunk), GFP_NOFS);
	if (!rc)
		return -ENOMEM;
	rc->rc_chunk = chunk;
	rc->rc_bitmap = FUNC1(sb->s_blocksize, GFP_NOFS);
	if (!rc->rc_bitmap) {
		FUNC0(rc);
		return -ENOMEM;
	}
	FUNC3(rc->rc_bitmap, dchunk->dqc_bitmap,
	       (FUNC4(sb) + 7) >> 3);
	FUNC2(&rc->rc_list, head);
	return 0;
}