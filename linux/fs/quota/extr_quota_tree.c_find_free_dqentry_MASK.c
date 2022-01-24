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
typedef  int uint ;
struct qtree_mem_dqinfo {int dqi_free_entry; int dqi_entry_size; int dqi_blocksize_bits; int /*<<< orphan*/  dqi_usable_bs; } ;
struct qt_disk_dqdbheader {int /*<<< orphan*/  dqdh_entries; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct dquot {int dq_off; int /*<<< orphan*/  dq_sb; TYPE_1__ dq_id; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int FUNC0 (struct qtree_mem_dqinfo*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct qtree_mem_dqinfo*) ; 
 scalar_t__ FUNC8 (struct qtree_mem_dqinfo*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC10 (struct qtree_mem_dqinfo*,int,char*) ; 
 int FUNC11 (struct qtree_mem_dqinfo*,char*,int) ; 
 int FUNC12 (struct qtree_mem_dqinfo*,int,char*) ; 

__attribute__((used)) static uint FUNC13(struct qtree_mem_dqinfo *info,
			      struct dquot *dquot, int *err)
{
	uint blk, i;
	struct qt_disk_dqdbheader *dh;
	char *buf = FUNC1(info->dqi_usable_bs);
	char *ddquot;

	*err = 0;
	if (!buf) {
		*err = -ENOMEM;
		return 0;
	}
	dh = (struct qt_disk_dqdbheader *)buf;
	if (info->dqi_free_entry) {
		blk = info->dqi_free_entry;
		*err = FUNC10(info, blk, buf);
		if (*err < 0)
			goto out_buf;
	} else {
		blk = FUNC0(info);
		if ((int)blk < 0) {
			*err = blk;
			FUNC2(buf);
			return 0;
		}
		FUNC6(buf, 0, info->dqi_usable_bs);
		/* This is enough as the block is already zeroed and the entry
		 * list is empty... */
		info->dqi_free_entry = blk;
		FUNC5(dquot->dq_sb, dquot->dq_id.type);
	}
	/* Block will be full? */
	if (FUNC4(dh->dqdh_entries) + 1 >= FUNC7(info)) {
		*err = FUNC11(info, buf, blk);
		if (*err < 0) {
			FUNC9(dquot->dq_sb, "Can't remove block (%u) "
				    "from entry free list", blk);
			goto out_buf;
		}
	}
	FUNC3(&dh->dqdh_entries, 1);
	/* Find free structure in block */
	ddquot = buf + sizeof(struct qt_disk_dqdbheader);
	for (i = 0; i < FUNC7(info); i++) {
		if (FUNC8(info, ddquot))
			break;
		ddquot += info->dqi_entry_size;
	}
#ifdef __QUOTA_QT_PARANOIA
	if (i == qtree_dqstr_in_blk(info)) {
		quota_error(dquot->dq_sb, "Data block full but it shouldn't");
		*err = -EIO;
		goto out_buf;
	}
#endif
	*err = FUNC12(info, blk, buf);
	if (*err < 0) {
		FUNC9(dquot->dq_sb, "Can't write quota data block %u",
			    blk);
		goto out_buf;
	}
	dquot->dq_off = (blk << info->dqi_blocksize_bits) +
			sizeof(struct qt_disk_dqdbheader) +
			i * info->dqi_entry_size;
	FUNC2(buf);
	return blk;
out_buf:
	FUNC2(buf);
	return 0;
}