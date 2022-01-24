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
struct qtree_mem_dqinfo {int dqi_blocksize_bits; int /*<<< orphan*/  dqi_entry_size; int /*<<< orphan*/  dqi_usable_bs; } ;
struct qt_disk_dqdbheader {int /*<<< orphan*/  dqdh_entries; } ;
struct dquot {int dq_off; int /*<<< orphan*/  dq_sb; } ;

/* Variables and functions */
 int ENOMEM ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qtree_mem_dqinfo*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qtree_mem_dqinfo*,char*,int) ; 
 int FUNC7 (struct qtree_mem_dqinfo*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC9 (struct qtree_mem_dqinfo*,int,char*) ; 
 int FUNC10 (struct qtree_mem_dqinfo*,char*,int) ; 
 int FUNC11 (struct qtree_mem_dqinfo*,int,char*) ; 

__attribute__((used)) static int FUNC12(struct qtree_mem_dqinfo *info, struct dquot *dquot,
			uint blk)
{
	struct qt_disk_dqdbheader *dh;
	char *buf = FUNC0(info->dqi_usable_bs);
	int ret = 0;

	if (!buf)
		return -ENOMEM;
	if (dquot->dq_off >> info->dqi_blocksize_bits != blk) {
		FUNC8(dquot->dq_sb, "Quota structure has offset to "
			"other block (%u) than it should (%u)", blk,
			(uint)(dquot->dq_off >> info->dqi_blocksize_bits));
		goto out_buf;
	}
	ret = FUNC9(info, blk, buf);
	if (ret < 0) {
		FUNC8(dquot->dq_sb, "Can't read quota data block %u",
			    blk);
		goto out_buf;
	}
	dh = (struct qt_disk_dqdbheader *)buf;
	FUNC3(&dh->dqdh_entries, -1);
	if (!FUNC4(dh->dqdh_entries)) {	/* Block got free? */
		ret = FUNC10(info, buf, blk);
		if (ret >= 0)
			ret = FUNC6(info, buf, blk);
		if (ret < 0) {
			FUNC8(dquot->dq_sb, "Can't move quota data block "
				    "(%u) to free list", blk);
			goto out_buf;
		}
	} else {
		FUNC5(buf +
		       (dquot->dq_off & ((1 << info->dqi_blocksize_bits) - 1)),
		       0, info->dqi_entry_size);
		if (FUNC4(dh->dqdh_entries) ==
		    FUNC7(info) - 1) {
			/* Insert will write block itself */
			ret = FUNC1(info, buf, blk);
			if (ret < 0) {
				FUNC8(dquot->dq_sb, "Can't insert quota "
				    "data block (%u) to free entry list", blk);
				goto out_buf;
			}
		} else {
			ret = FUNC11(info, blk, buf);
			if (ret < 0) {
				FUNC8(dquot->dq_sb, "Can't write quota "
					    "data block %u", blk);
				goto out_buf;
			}
		}
	}
	dquot->dq_off = 0;	/* Quota is now unattached */
out_buf:
	FUNC2(buf);
	return ret;
}