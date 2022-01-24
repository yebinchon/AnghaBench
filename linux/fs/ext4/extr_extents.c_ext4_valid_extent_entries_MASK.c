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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_super_block {int /*<<< orphan*/  s_last_error_block; } ;
struct ext4_extent_idx {int dummy; } ;
struct ext4_extent_header {scalar_t__ eh_entries; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
typedef  scalar_t__ ext4_lblk_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;
struct TYPE_2__ {struct ext4_super_block* s_es; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ext4_extent* FUNC1 (struct ext4_extent_header*) ; 
 struct ext4_extent_idx* FUNC2 (struct ext4_extent_header*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC5 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct ext4_extent_idx*) ; 
 unsigned short FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct inode *inode,
				struct ext4_extent_header *eh,
				int depth)
{
	unsigned short entries;
	if (eh->eh_entries == 0)
		return 1;

	entries = FUNC8(eh->eh_entries);

	if (depth == 0) {
		/* leaf entries */
		struct ext4_extent *ext = FUNC1(eh);
		struct ext4_super_block *es = FUNC0(inode->i_sb)->s_es;
		ext4_fsblk_t pblock = 0;
		ext4_lblk_t lblock = 0;
		ext4_lblk_t prev = 0;
		int len = 0;
		while (entries) {
			if (!FUNC6(inode, ext))
				return 0;

			/* Check for overlapping extents */
			lblock = FUNC9(ext->ee_block);
			len = FUNC4(ext);
			if ((lblock <= prev) && prev) {
				pblock = FUNC5(ext);
				es->s_last_error_block = FUNC3(pblock);
				return 0;
			}
			ext++;
			entries--;
			prev = lblock + len - 1;
		}
	} else {
		struct ext4_extent_idx *ext_idx = FUNC2(eh);
		while (entries) {
			if (!FUNC7(inode, ext_idx))
				return 0;
			ext_idx++;
			entries--;
		}
	}
	return 1;
}