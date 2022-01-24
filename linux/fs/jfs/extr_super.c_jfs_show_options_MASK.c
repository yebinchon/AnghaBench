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
struct seq_file {int dummy; } ;
struct jfs_sb_info {int umask; int flag; TYPE_1__* nls_tab; int /*<<< orphan*/  minblks_trim; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  charset; } ;

/* Variables and functions */
 int JFS_DISCARD ; 
 int JFS_ERR_CONTINUE ; 
 int JFS_ERR_PANIC ; 
 int JFS_GRPQUOTA ; 
 int JFS_NOINTEGRITY ; 
 struct jfs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int JFS_USRQUOTA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct seq_file *seq, struct dentry *root)
{
	struct jfs_sb_info *sbi = FUNC0(root->d_sb);

	if (FUNC6(sbi->uid))
		FUNC4(seq, ",uid=%d", FUNC2(&init_user_ns, sbi->uid));
	if (FUNC3(sbi->gid))
		FUNC4(seq, ",gid=%d", FUNC1(&init_user_ns, sbi->gid));
	if (sbi->umask != -1)
		FUNC4(seq, ",umask=%03o", sbi->umask);
	if (sbi->flag & JFS_NOINTEGRITY)
		FUNC5(seq, ",nointegrity");
	if (sbi->flag & JFS_DISCARD)
		FUNC4(seq, ",discard=%u", sbi->minblks_trim);
	if (sbi->nls_tab)
		FUNC4(seq, ",iocharset=%s", sbi->nls_tab->charset);
	if (sbi->flag & JFS_ERR_CONTINUE)
		FUNC4(seq, ",errors=continue");
	if (sbi->flag & JFS_ERR_PANIC)
		FUNC4(seq, ",errors=panic");

#ifdef CONFIG_QUOTA
	if (sbi->flag & JFS_USRQUOTA)
		seq_puts(seq, ",usrquota");

	if (sbi->flag & JFS_GRPQUOTA)
		seq_puts(seq, ",grpquota");
#endif

	return 0;
}