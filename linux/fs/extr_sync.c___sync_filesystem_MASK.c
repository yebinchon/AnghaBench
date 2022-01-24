#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int /*<<< orphan*/  s_bdev; TYPE_1__* s_op; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sync_fs ) (struct super_block*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  WB_REASON_SYNC ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb, int wait)
{
	if (wait)
		FUNC2(sb);
	else
		FUNC3(sb, WB_REASON_SYNC);

	if (sb->s_op->sync_fs)
		sb->s_op->sync_fs(sb, wait);
	return FUNC0(sb->s_bdev, wait);
}