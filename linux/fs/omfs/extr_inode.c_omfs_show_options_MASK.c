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
typedef  scalar_t__ umode_t ;
struct seq_file {int dummy; } ;
struct omfs_sb_info {scalar_t__ s_dmask; scalar_t__ s_fmask; int /*<<< orphan*/  s_gid; int /*<<< orphan*/  s_uid; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 struct omfs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct seq_file *m, struct dentry *root)
{
	struct omfs_sb_info *sbi = FUNC0(root->d_sb);
	umode_t cur_umask = FUNC3();

	if (!FUNC8(sbi->s_uid, FUNC2()))
		FUNC7(m, ",uid=%u",
			   FUNC5(&init_user_ns, sbi->s_uid));
	if (!FUNC6(sbi->s_gid, FUNC1()))
		FUNC7(m, ",gid=%u",
			   FUNC4(&init_user_ns, sbi->s_gid));

	if (sbi->s_dmask == sbi->s_fmask) {
		if (sbi->s_fmask != cur_umask)
			FUNC7(m, ",umask=%o", sbi->s_fmask);
	} else {
		if (sbi->s_dmask != cur_umask)
			FUNC7(m, ",dmask=%o", sbi->s_dmask);
		if (sbi->s_fmask != cur_umask)
			FUNC7(m, ",fmask=%o", sbi->s_fmask);
	}

	return 0;
}