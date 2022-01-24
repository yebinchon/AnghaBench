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
typedef  int /*<<< orphan*/  uint ;
struct qtree_mem_dqinfo {int dqi_usable_bs; int dqi_qtree_depth; } ;
struct dquot {int /*<<< orphan*/  dq_sb; int /*<<< orphan*/  dq_id; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QT_TREEOFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qtree_mem_dqinfo*,struct dquot*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct qtree_mem_dqinfo*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qtree_mem_dqinfo*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct qtree_mem_dqinfo*,int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (struct qtree_mem_dqinfo*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC10(struct qtree_mem_dqinfo *info, struct dquot *dquot,
		       uint *blk, int depth)
{
	char *buf = FUNC3(info->dqi_usable_bs);
	int ret = 0;
	uint newblk;
	__le32 *ref = (__le32 *)buf;

	if (!buf)
		return -ENOMEM;
	ret = FUNC8(info, *blk, buf);
	if (ret < 0) {
		FUNC7(dquot->dq_sb, "Can't read quota data block %u",
			    *blk);
		goto out_buf;
	}
	newblk = FUNC5(ref[FUNC2(info, dquot->dq_id, depth)]);
	if (depth == info->dqi_qtree_depth - 1) {
		ret = FUNC1(info, dquot, newblk);
		newblk = 0;
	} else {
		ret = FUNC10(info, dquot, &newblk, depth+1);
	}
	if (ret >= 0 && !newblk) {
		int i;
		ref[FUNC2(info, dquot->dq_id, depth)] = FUNC0(0);
		/* Block got empty? */
		for (i = 0; i < (info->dqi_usable_bs >> 2) && !ref[i]; i++)
			;
		/* Don't put the root block into the free block list */
		if (i == (info->dqi_usable_bs >> 2)
		    && *blk != QT_TREEOFF) {
			FUNC6(info, buf, *blk);
			*blk = 0;
		} else {
			ret = FUNC9(info, *blk, buf);
			if (ret < 0)
				FUNC7(dquot->dq_sb,
					    "Can't write quota tree block %u",
					    *blk);
		}
	}
out_buf:
	FUNC4(buf);
	return ret;
}