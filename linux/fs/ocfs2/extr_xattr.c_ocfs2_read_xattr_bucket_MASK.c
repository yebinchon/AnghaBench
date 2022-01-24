#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_xattr_bucket {TYPE_3__* bu_inode; int /*<<< orphan*/  bu_blocks; int /*<<< orphan*/  bu_bhs; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_sb; } ;
struct TYPE_5__ {int /*<<< orphan*/  osb_xattr_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  xh_check; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct ocfs2_xattr_bucket*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_xattr_bucket*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct ocfs2_xattr_bucket *bucket,
				   u64 xb_blkno)
{
	int rc;

	rc = FUNC4(FUNC0(bucket->bu_inode), xb_blkno,
			       bucket->bu_blocks, bucket->bu_bhs, 0,
			       NULL);
	if (!rc) {
		FUNC7(&FUNC1(bucket->bu_inode->i_sb)->osb_xattr_lock);
		rc = FUNC5(bucket->bu_inode->i_sb,
						 bucket->bu_bhs,
						 bucket->bu_blocks,
						 &FUNC2(bucket)->xh_check);
		FUNC8(&FUNC1(bucket->bu_inode->i_sb)->osb_xattr_lock);
		if (rc)
			FUNC3(rc);
	}

	if (rc)
		FUNC6(bucket);
	return rc;
}