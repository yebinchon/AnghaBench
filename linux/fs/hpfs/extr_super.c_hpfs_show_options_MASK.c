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
struct seq_file {int dummy; } ;
struct hpfs_sb_info {int sb_mode; int sb_chk; int sb_err; int sb_chkdsk; int sb_eas; int sb_timeshift; scalar_t__ sb_lowercase; int /*<<< orphan*/  sb_gid; int /*<<< orphan*/  sb_uid; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hpfs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC4(struct seq_file *seq, struct dentry *root)
{
	struct hpfs_sb_info *sbi = FUNC2(root->d_sb);

	FUNC3(seq, ",uid=%u", FUNC1(&init_user_ns, sbi->sb_uid));
	FUNC3(seq, ",gid=%u", FUNC0(&init_user_ns, sbi->sb_gid));
	FUNC3(seq, ",umask=%03o", (~sbi->sb_mode & 0777));
	if (sbi->sb_lowercase)
		FUNC3(seq, ",case=lower");
	if (!sbi->sb_chk)
		FUNC3(seq, ",check=none");
	if (sbi->sb_chk == 2)
		FUNC3(seq, ",check=strict");
	if (!sbi->sb_err)
		FUNC3(seq, ",errors=continue");
	if (sbi->sb_err == 2)
		FUNC3(seq, ",errors=panic");
	if (!sbi->sb_chkdsk)
		FUNC3(seq, ",chkdsk=no");
	if (sbi->sb_chkdsk == 2)
		FUNC3(seq, ",chkdsk=always");
	if (!sbi->sb_eas)
		FUNC3(seq, ",eas=no");
	if (sbi->sb_eas == 1)
		FUNC3(seq, ",eas=ro");
	if (sbi->sb_timeshift)
		FUNC3(seq, ",timeshift=%d", sbi->sb_timeshift);
	return 0;
}