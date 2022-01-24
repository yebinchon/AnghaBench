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
struct ocfs2_xattr_bucket {int bu_blocks; int /*<<< orphan*/ * bu_bhs; TYPE_1__* bu_inode; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {int /*<<< orphan*/  osb_xattr_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  xh_check; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct ocfs2_xattr_bucket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(handle_t *handle,
					     struct ocfs2_xattr_bucket *bucket)
{
	int i;

	FUNC4(&FUNC0(bucket->bu_inode->i_sb)->osb_xattr_lock);
	FUNC2(bucket->bu_inode->i_sb,
				   bucket->bu_bhs, bucket->bu_blocks,
				   &FUNC1(bucket)->xh_check);
	FUNC5(&FUNC0(bucket->bu_inode->i_sb)->osb_xattr_lock);

	for (i = 0; i < bucket->bu_blocks; i++)
		FUNC3(handle, bucket->bu_bhs[i]);
}