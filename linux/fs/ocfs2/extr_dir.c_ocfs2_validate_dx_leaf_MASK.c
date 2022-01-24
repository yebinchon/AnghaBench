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
struct ocfs2_dx_leaf {int /*<<< orphan*/  dl_signature; int /*<<< orphan*/  dl_check; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_dx_leaf*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int FUNC4 (struct super_block*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct super_block*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb,
				  struct buffer_head *bh)
{
	int ret;
	struct ocfs2_dx_leaf *dx_leaf = (struct ocfs2_dx_leaf *)bh->b_data;

	FUNC0(!FUNC2(bh));

	ret = FUNC5(sb, bh->b_data, &dx_leaf->dl_check);
	if (ret) {
		FUNC3(ML_ERROR,
		     "Checksum failed for dir index leaf block %llu\n",
		     (unsigned long long)bh->b_blocknr);
		return ret;
	}

	if (!FUNC1(dx_leaf)) {
		ret = FUNC4(sb, "Dir Index Leaf has bad signature %.*s\n",
				  7, dx_leaf->dl_signature);
	}

	return ret;
}