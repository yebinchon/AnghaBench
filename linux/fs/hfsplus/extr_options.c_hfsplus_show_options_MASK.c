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
struct hfsplus_sb_info {scalar_t__ creator; scalar_t__ type; scalar_t__ part; scalar_t__ session; int /*<<< orphan*/  flags; TYPE_1__* nls; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  umask; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {scalar_t__ charset; } ;

/* Variables and functions */
 scalar_t__ HFSPLUS_DEF_CR_TYPE ; 
 struct hfsplus_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HFSPLUS_SB_NOBARRIER ; 
 int /*<<< orphan*/  HFSPLUS_SB_NODECOMPOSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct seq_file *seq, struct dentry *root)
{
	struct hfsplus_sb_info *sbi = FUNC0(root->d_sb);

	if (sbi->creator != HFSPLUS_DEF_CR_TYPE)
		FUNC5(seq, "creator", (char *)&sbi->creator, 4);
	if (sbi->type != HFSPLUS_DEF_CR_TYPE)
		FUNC5(seq, "type", (char *)&sbi->type, 4);
	FUNC3(seq, ",umask=%o,uid=%u,gid=%u", sbi->umask,
			FUNC2(&init_user_ns, sbi->uid),
			FUNC1(&init_user_ns, sbi->gid));
	if (sbi->part >= 0)
		FUNC3(seq, ",part=%u", sbi->part);
	if (sbi->session >= 0)
		FUNC3(seq, ",session=%u", sbi->session);
	if (sbi->nls)
		FUNC3(seq, ",nls=%s", sbi->nls->charset);
	if (FUNC6(HFSPLUS_SB_NODECOMPOSE, &sbi->flags))
		FUNC4(seq, ",nodecompose");
	if (FUNC6(HFSPLUS_SB_NOBARRIER, &sbi->flags))
		FUNC4(seq, ",nobarrier");
	return 0;
}