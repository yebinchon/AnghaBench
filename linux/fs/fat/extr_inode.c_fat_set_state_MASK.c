#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct msdos_sb_info {scalar_t__ dirty; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct fat_boot_sector {TYPE_2__ fat16; TYPE_1__ fat32; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAT_STATE_DIRTY ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 struct msdos_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct msdos_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 struct buffer_head* FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC8(struct super_block *sb,
			unsigned int set, unsigned int force)
{
	struct buffer_head *bh;
	struct fat_boot_sector *b;
	struct msdos_sb_info *sbi = FUNC0(sb);

	/* do not change any thing if mounted read only */
	if (FUNC6(sb) && !force)
		return;

	/* do not change state if fs was dirty */
	if (sbi->dirty) {
		/* warn only on set (mount). */
		if (set)
			FUNC2(sb, KERN_WARNING, "Volume was not properly "
				"unmounted. Some data may be corrupt. "
				"Please run fsck.");
		return;
	}

	bh = FUNC5(sb, 0);
	if (bh == NULL) {
		FUNC2(sb, KERN_ERR, "unable to read boot sector "
			"to mark fs as dirty");
		return;
	}

	b = (struct fat_boot_sector *) bh->b_data;

	if (FUNC3(sbi)) {
		if (set)
			b->fat32.state |= FAT_STATE_DIRTY;
		else
			b->fat32.state &= ~FAT_STATE_DIRTY;
	} else /* fat 16 and 12 */ {
		if (set)
			b->fat16.state |= FAT_STATE_DIRTY;
		else
			b->fat16.state &= ~FAT_STATE_DIRTY;
	}

	FUNC4(bh);
	FUNC7(bh);
	FUNC1(bh);
}