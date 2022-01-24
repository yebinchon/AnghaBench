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
struct file {int dummy; } ;
struct ext4_new_group_data {int /*<<< orphan*/  group; } ;
struct TYPE_4__ {scalar_t__ s_journal; } ;
struct TYPE_3__ {struct super_block* i_sb; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  INIT_INODE_TABLE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC1 (struct super_block*,struct ext4_new_group_data*) ; 
 scalar_t__ FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 TYPE_1__* FUNC8 (struct file*) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct file*) ; 
 int FUNC13 (struct file*) ; 
 scalar_t__ FUNC14 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC15(struct file *file,
				 struct ext4_new_group_data *input)
{
	struct super_block *sb = FUNC8(file)->i_sb;
	int err, err2=0;

	err = FUNC6(sb);
	if (err)
		return err;

	if (FUNC2(sb)) {
		FUNC4(sb, KERN_ERR,
			 "Online resizing not supported with bigalloc");
		err = -EOPNOTSUPP;
		goto group_add_out;
	}

	err = FUNC13(file);
	if (err)
		goto group_add_out;

	err = FUNC1(sb, input);
	if (FUNC0(sb)->s_journal) {
		FUNC10(FUNC0(sb)->s_journal);
		err2 = FUNC9(FUNC0(sb)->s_journal);
		FUNC11(FUNC0(sb)->s_journal);
	}
	if (err == 0)
		err = err2;
	FUNC12(file);
	if (!err && FUNC3(sb) &&
	    FUNC14(sb, INIT_INODE_TABLE))
		err = FUNC5(sb, input->group);
group_add_out:
	FUNC7(sb);
	return err;
}