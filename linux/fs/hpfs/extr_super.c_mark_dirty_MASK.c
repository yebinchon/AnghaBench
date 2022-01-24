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
struct super_block {int dummy; } ;
struct hpfs_spare_block {int dirty; scalar_t__ old_wrote; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {scalar_t__ sb_chkdsk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 struct hpfs_spare_block* FUNC1 (struct super_block*,int,struct buffer_head**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC6(struct super_block *s, int remount)
{
	if (FUNC2(s)->sb_chkdsk && (remount || !FUNC4(s))) {
		struct buffer_head *bh;
		struct hpfs_spare_block *sb;
		if ((sb = FUNC1(s, 17, &bh, 0))) {
			sb->dirty = 1;
			sb->old_wrote = 0;
			FUNC3(bh);
			FUNC5(bh);
			FUNC0(bh);
		}
	}
}