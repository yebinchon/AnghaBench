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
struct isofs_sb_info {int s_check; int s_mapping; int s_session; int s_sbsector; int s_dmode; int s_fmode; TYPE_1__* s_nls_iocharset; int /*<<< orphan*/  s_gid; scalar_t__ s_gid_set; int /*<<< orphan*/  s_uid; scalar_t__ s_uid_set; scalar_t__ s_utf8; scalar_t__ s_showassoc; scalar_t__ s_overriderockperm; scalar_t__ s_nocompress; scalar_t__ s_hide; scalar_t__ s_cruft; int /*<<< orphan*/  s_joliet_level; int /*<<< orphan*/  s_rock; } ;
struct dentry {TYPE_2__* d_sb; } ;
struct TYPE_4__ {int s_blocksize; } ;
struct TYPE_3__ {int charset; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_NLS_DEFAULT ; 
 int ISOFS_INVALID_MODE ; 
 struct isofs_sb_info* FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, struct dentry *root)
{
	struct isofs_sb_info *sbi = FUNC0(root->d_sb);

	if (!sbi->s_rock)		FUNC4(m, ",norock");
	else if (!sbi->s_joliet_level)	FUNC4(m, ",nojoliet");
	if (sbi->s_cruft)		FUNC4(m, ",cruft");
	if (sbi->s_hide)		FUNC4(m, ",hide");
	if (sbi->s_nocompress)		FUNC4(m, ",nocompress");
	if (sbi->s_overriderockperm)	FUNC4(m, ",overriderockperm");
	if (sbi->s_showassoc)		FUNC4(m, ",showassoc");
	if (sbi->s_utf8)		FUNC4(m, ",utf8");

	if (sbi->s_check)		FUNC3(m, ",check=%c", sbi->s_check);
	if (sbi->s_mapping)		FUNC3(m, ",map=%c", sbi->s_mapping);
	if (sbi->s_session != 255)	FUNC3(m, ",session=%u", sbi->s_session - 1);
	if (sbi->s_sbsector != -1)	FUNC3(m, ",sbsector=%u", sbi->s_sbsector);

	if (root->d_sb->s_blocksize != 1024)
		FUNC3(m, ",blocksize=%lu", root->d_sb->s_blocksize);

	if (sbi->s_uid_set)
		FUNC3(m, ",uid=%u",
			   FUNC2(&init_user_ns, sbi->s_uid));
	if (sbi->s_gid_set)
		FUNC3(m, ",gid=%u",
			   FUNC1(&init_user_ns, sbi->s_gid));

	if (sbi->s_dmode != ISOFS_INVALID_MODE)
		FUNC3(m, ",dmode=%o", sbi->s_dmode);
	if (sbi->s_fmode != ISOFS_INVALID_MODE)
		FUNC3(m, ",fmode=%o", sbi->s_fmode);

#ifdef CONFIG_JOLIET
	if (sbi->s_nls_iocharset &&
	    strcmp(sbi->s_nls_iocharset->charset, CONFIG_NLS_DEFAULT) != 0)
		seq_printf(m, ",iocharset=%s", sbi->s_nls_iocharset->charset);
#endif
	return 0;
}