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
struct super_block {int dummy; } ;
struct ocfs2_trim_fs_info {int tf_success; scalar_t__ tf_start; scalar_t__ tf_len; scalar_t__ tf_minlen; scalar_t__ tf_trimlen; int /*<<< orphan*/  tf_nodenum; scalar_t__ tf_valid; } ;
struct ocfs2_super {int /*<<< orphan*/  node_num; int /*<<< orphan*/  dev_str; } ;
struct fstrim_range {scalar_t__ start; scalar_t__ len; scalar_t__ minlen; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  ML_NOTICE ; 
 struct ocfs2_super* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ocfs2_super*,struct ocfs2_trim_fs_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_super*,struct ocfs2_trim_fs_info*) ; 
 int FUNC7 (struct super_block*,struct fstrim_range*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 

int FUNC9(struct super_block *sb, struct fstrim_range *range)
{
	int ret;
	struct ocfs2_super *osb = FUNC0(sb);
	struct ocfs2_trim_fs_info info, *pinfo = NULL;

	FUNC4(osb);

	FUNC8(range->start, range->len, range->minlen);

	ret = FUNC3(osb, NULL, 1);
	if (ret < 0) {
		if (ret != -EAGAIN) {
			FUNC2(ret);
			FUNC5(osb);
			return ret;
		}

		FUNC1(ML_NOTICE, "Wait for trim on device (%s) to "
		     "finish, which is running from another node.\n",
		     osb->dev_str);
		ret = FUNC3(osb, &info, 0);
		if (ret < 0) {
			FUNC2(ret);
			FUNC5(osb);
			return ret;
		}

		if (info.tf_valid && info.tf_success &&
		    info.tf_start == range->start &&
		    info.tf_len == range->len &&
		    info.tf_minlen == range->minlen) {
			/* Avoid sending duplicated trim to a shared device */
			FUNC1(ML_NOTICE, "The same trim on device (%s) was "
			     "just done from node (%u), return.\n",
			     osb->dev_str, info.tf_nodenum);
			range->len = info.tf_trimlen;
			goto out;
		}
	}

	info.tf_nodenum = osb->node_num;
	info.tf_start = range->start;
	info.tf_len = range->len;
	info.tf_minlen = range->minlen;

	ret = FUNC7(sb, range);

	info.tf_trimlen = range->len;
	info.tf_success = (ret < 0 ? 0 : 1);
	pinfo = &info;
out:
	FUNC6(osb, pinfo);
	FUNC5(osb);
	return ret;
}