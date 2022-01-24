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
struct the_nilfs {int dummy; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct seq_file {int dummy; } ;
struct nilfs_root {scalar_t__ cno; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_2__ {struct nilfs_root* i_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BARRIER ; 
 int /*<<< orphan*/  DISCARD ; 
 int /*<<< orphan*/  ERRORS_CONT ; 
 int /*<<< orphan*/  ERRORS_PANIC ; 
 scalar_t__ NILFS_CPTREE_CURRENT_CNO ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NORECOVERY ; 
 int /*<<< orphan*/  STRICT_ORDER ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct the_nilfs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *seq, struct dentry *dentry)
{
	struct super_block *sb = dentry->d_sb;
	struct the_nilfs *nilfs = sb->s_fs_info;
	struct nilfs_root *root = FUNC0(FUNC1(dentry))->i_root;

	if (!FUNC2(nilfs, BARRIER))
		FUNC4(seq, ",nobarrier");
	if (root->cno != NILFS_CPTREE_CURRENT_CNO)
		FUNC3(seq, ",cp=%llu", (unsigned long long)root->cno);
	if (FUNC2(nilfs, ERRORS_PANIC))
		FUNC4(seq, ",errors=panic");
	if (FUNC2(nilfs, ERRORS_CONT))
		FUNC4(seq, ",errors=continue");
	if (FUNC2(nilfs, STRICT_ORDER))
		FUNC4(seq, ",order=strict");
	if (FUNC2(nilfs, NORECOVERY))
		FUNC4(seq, ",norecovery");
	if (FUNC2(nilfs, DISCARD))
		FUNC4(seq, ",discard");

	return 0;
}