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
struct inode {int dummy; } ;
struct f2fs_sb_info {int /*<<< orphan*/  sb_lock; TYPE_1__* raw_super; } ;
struct TYPE_2__ {int hot_ext_count; int /*<<< orphan*/  extension_count; int /*<<< orphan*/  extension_list; } ;

/* Variables and functions */
 size_t F2FS_EXTENSION_LEN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * extlist ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (unsigned char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct f2fs_sb_info *sbi, struct inode *inode,
		const unsigned char *name)
{
	FUNC0 (*extlist)[F2FS_EXTENSION_LEN] = sbi->raw_super->extension_list;
	int i, cold_count, hot_count;

	FUNC1(&sbi->sb_lock);

	cold_count = FUNC5(sbi->raw_super->extension_count);
	hot_count = sbi->raw_super->hot_ext_count;

	for (i = 0; i < cold_count + hot_count; i++) {
		if (FUNC4(name, extlist[i]))
			break;
	}

	FUNC6(&sbi->sb_lock);

	if (i == cold_count + hot_count)
		return;

	if (i < cold_count)
		FUNC2(inode);
	else
		FUNC3(inode);
}