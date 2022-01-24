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
struct qtree_mem_dqinfo {int dqi_usable_bs; int dqi_qtree_depth; int /*<<< orphan*/  dqi_sb; } ;
typedef  int ssize_t ;
typedef  unsigned int qid_t ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int FUNC0 (struct qtree_mem_dqinfo*,unsigned int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC6 (struct qtree_mem_dqinfo*,unsigned int,char*) ; 

__attribute__((used)) static int FUNC7(struct qtree_mem_dqinfo *info, qid_t *id,
			unsigned int blk, int depth)
{
	char *buf = FUNC2(info->dqi_usable_bs);
	__le32 *ref = (__le32 *)buf;
	ssize_t ret;
	unsigned int epb = info->dqi_usable_bs >> 2;
	unsigned int level_inc = 1;
	int i;

	if (!buf)
		return -ENOMEM;

	for (i = depth; i < info->dqi_qtree_depth - 1; i++)
		level_inc *= epb;

	ret = FUNC6(info, blk, buf);
	if (ret < 0) {
		FUNC5(info->dqi_sb,
			    "Can't read quota tree block %u", blk);
		goto out_buf;
	}
	for (i = FUNC0(info, *id, depth); i < epb; i++) {
		if (ref[i] == FUNC1(0)) {
			*id += level_inc;
			continue;
		}
		if (depth == info->dqi_qtree_depth - 1) {
			ret = 0;
			goto out_buf;
		}
		ret = FUNC7(info, id, FUNC4(ref[i]), depth + 1);
		if (ret != -ENOENT)
			break;
	}
	if (i == epb) {
		ret = -ENOENT;
		goto out_buf;
	}
out_buf:
	FUNC3(buf);
	return ret;
}