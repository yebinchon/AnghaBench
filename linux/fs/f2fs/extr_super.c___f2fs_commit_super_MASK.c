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
struct f2fs_super_block {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 scalar_t__ F2FS_SUPER_OFFSET ; 
 int REQ_FUA ; 
 int REQ_PREFLUSH ; 
 int REQ_SYNC ; 
 int FUNC0 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct f2fs_super_block*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC5(struct buffer_head *bh,
			struct f2fs_super_block *super)
{
	FUNC1(bh);
	if (super)
		FUNC2(bh->b_data + F2FS_SUPER_OFFSET, super, sizeof(*super));
	FUNC3(bh);
	FUNC4(bh);

	/* it's rare case, we can do fua all the time */
	return FUNC0(bh, REQ_SYNC | REQ_PREFLUSH | REQ_FUA);
}