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
struct seq_file {int dummy; } ;
struct hfs_sb_info {scalar_t__ s_creator; scalar_t__ s_type; int s_file_umask; int s_dir_umask; scalar_t__ s_quiet; TYPE_2__* nls_io; TYPE_1__* nls_disk; int /*<<< orphan*/  session; int /*<<< orphan*/  part; int /*<<< orphan*/  s_gid; int /*<<< orphan*/  s_uid; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  charset; } ;
struct TYPE_3__ {int /*<<< orphan*/  charset; } ;

/* Variables and functions */
 struct hfs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,char*,int) ; 

__attribute__((used)) static int FUNC6(struct seq_file *seq, struct dentry *root)
{
	struct hfs_sb_info *sbi = FUNC0(root->d_sb);

	if (sbi->s_creator != FUNC1(0x3f3f3f3f))
		FUNC5(seq, "creator", (char *)&sbi->s_creator, 4);
	if (sbi->s_type != FUNC1(0x3f3f3f3f))
		FUNC5(seq, "type", (char *)&sbi->s_type, 4);
	FUNC4(seq, ",uid=%u,gid=%u",
			FUNC3(&init_user_ns, sbi->s_uid),
			FUNC2(&init_user_ns, sbi->s_gid));
	if (sbi->s_file_umask != 0133)
		FUNC4(seq, ",file_umask=%o", sbi->s_file_umask);
	if (sbi->s_dir_umask != 0022)
		FUNC4(seq, ",dir_umask=%o", sbi->s_dir_umask);
	if (sbi->part >= 0)
		FUNC4(seq, ",part=%u", sbi->part);
	if (sbi->session >= 0)
		FUNC4(seq, ",session=%u", sbi->session);
	if (sbi->nls_disk)
		FUNC4(seq, ",codepage=%s", sbi->nls_disk->charset);
	if (sbi->nls_io)
		FUNC4(seq, ",iocharset=%s", sbi->nls_io->charset);
	if (sbi->s_quiet)
		FUNC4(seq, ",quiet");
	return 0;
}