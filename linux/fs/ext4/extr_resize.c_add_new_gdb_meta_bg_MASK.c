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
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  unsigned long ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int s_gdb_count; struct buffer_head** s_group_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int ENOMEM ; 
 unsigned long FUNC1 (struct super_block*) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct super_block*,unsigned long) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 struct buffer_head** FUNC8 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct super_block*,unsigned long) ; 
 struct buffer_head* FUNC10 (struct super_block*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head**,struct buffer_head**,int) ; 

__attribute__((used)) static int FUNC14(struct super_block *sb,
			       handle_t *handle, ext4_group_t group) {
	ext4_fsblk_t gdblock;
	struct buffer_head *gdb_bh;
	struct buffer_head **o_group_desc, **n_group_desc;
	unsigned long gdb_num = group / FUNC1(sb);
	int err;

	gdblock = FUNC9(sb, group) +
		   FUNC6(sb, group);
	gdb_bh = FUNC10(sb, gdblock, 0);
	if (FUNC3(gdb_bh))
		return FUNC4(gdb_bh);
	n_group_desc = FUNC8((gdb_num + 1) *
				     sizeof(struct buffer_head *),
				     GFP_NOFS);
	if (!n_group_desc) {
		FUNC5(gdb_bh);
		err = -ENOMEM;
		FUNC11(sb, "not enough memory for %lu groups",
			     gdb_num + 1);
		return err;
	}

	o_group_desc = FUNC2(sb)->s_group_desc;
	FUNC13(n_group_desc, o_group_desc,
	       FUNC2(sb)->s_gdb_count * sizeof(struct buffer_head *));
	n_group_desc[gdb_num] = gdb_bh;

	FUNC0(gdb_bh, "get_write_access");
	err = FUNC7(handle, gdb_bh);
	if (err) {
		FUNC12(n_group_desc);
		FUNC5(gdb_bh);
		return err;
	}

	FUNC2(sb)->s_group_desc = n_group_desc;
	FUNC2(sb)->s_gdb_count++;
	FUNC12(o_group_desc);
	return err;
}