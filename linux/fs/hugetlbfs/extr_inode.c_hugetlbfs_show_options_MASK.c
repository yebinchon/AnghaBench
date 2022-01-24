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
struct hugetlbfs_sb_info {int mode; int max_inodes; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  hstate; struct hugepage_subpool* spool; } ;
struct hugepage_subpool {int max_hpages; int min_hpages; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 struct hugetlbfs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct seq_file *m, struct dentry *root)
{
	struct hugetlbfs_sb_info *sbinfo = FUNC0(root->d_sb);
	struct hugepage_subpool *spool = sbinfo->spool;
	unsigned long hpage_size = FUNC5(sbinfo->hstate);
	unsigned hpage_shift = FUNC4(sbinfo->hstate);
	char mod;

	if (!FUNC7(sbinfo->uid, GLOBAL_ROOT_UID))
		FUNC6(m, ",uid=%u",
			   FUNC2(&init_user_ns, sbinfo->uid));
	if (!FUNC3(sbinfo->gid, GLOBAL_ROOT_GID))
		FUNC6(m, ",gid=%u",
			   FUNC1(&init_user_ns, sbinfo->gid));
	if (sbinfo->mode != 0755)
		FUNC6(m, ",mode=%o", sbinfo->mode);
	if (sbinfo->max_inodes != -1)
		FUNC6(m, ",nr_inodes=%lu", sbinfo->max_inodes);

	hpage_size /= 1024;
	mod = 'K';
	if (hpage_size >= 1024) {
		hpage_size /= 1024;
		mod = 'M';
	}
	FUNC6(m, ",pagesize=%lu%c", hpage_size, mod);
	if (spool) {
		if (spool->max_hpages != -1)
			FUNC6(m, ",size=%llu",
				   (unsigned long long)spool->max_hpages << hpage_shift);
		if (spool->min_hpages != -1)
			FUNC6(m, ",min_size=%llu",
				   (unsigned long long)spool->min_hpages << hpage_shift);
	}
	return 0;
}