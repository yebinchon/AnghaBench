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
typedef  int uint ;
struct qtree_mem_dqinfo {int dqi_qtree_depth; int /*<<< orphan*/  dqi_usable_bs; } ;
struct dquot {int /*<<< orphan*/  dq_id; int /*<<< orphan*/  dq_sb; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct qtree_mem_dqinfo*,struct dquot*,int*) ; 
 int FUNC2 (struct qtree_mem_dqinfo*) ; 
 size_t FUNC3 (struct qtree_mem_dqinfo*,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qtree_mem_dqinfo*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC10 (struct qtree_mem_dqinfo*,int,char*) ; 
 int FUNC11 (struct qtree_mem_dqinfo*,int,char*) ; 

__attribute__((used)) static int FUNC12(struct qtree_mem_dqinfo *info, struct dquot *dquot,
			  uint *treeblk, int depth)
{
	char *buf = FUNC4(info->dqi_usable_bs);
	int ret = 0, newson = 0, newact = 0;
	__le32 *ref;
	uint newblk;

	if (!buf)
		return -ENOMEM;
	if (!*treeblk) {
		ret = FUNC2(info);
		if (ret < 0)
			goto out_buf;
		*treeblk = ret;
		FUNC7(buf, 0, info->dqi_usable_bs);
		newact = 1;
	} else {
		ret = FUNC10(info, *treeblk, buf);
		if (ret < 0) {
			FUNC9(dquot->dq_sb, "Can't read tree quota "
				    "block %u", *treeblk);
			goto out_buf;
		}
	}
	ref = (__le32 *)buf;
	newblk = FUNC6(ref[FUNC3(info, dquot->dq_id, depth)]);
	if (!newblk)
		newson = 1;
	if (depth == info->dqi_qtree_depth - 1) {
#ifdef __QUOTA_QT_PARANOIA
		if (newblk) {
			quota_error(dquot->dq_sb, "Inserting already present "
				    "quota entry (block %u)",
				    le32_to_cpu(ref[get_index(info,
						dquot->dq_id, depth)]));
			ret = -EIO;
			goto out_buf;
		}
#endif
		newblk = FUNC1(info, dquot, &ret);
	} else {
		ret = FUNC12(info, dquot, &newblk, depth+1);
	}
	if (newson && ret >= 0) {
		ref[FUNC3(info, dquot->dq_id, depth)] =
							FUNC0(newblk);
		ret = FUNC11(info, *treeblk, buf);
	} else if (newact && ret < 0) {
		FUNC8(info, buf, *treeblk);
	}
out_buf:
	FUNC5(buf);
	return ret;
}