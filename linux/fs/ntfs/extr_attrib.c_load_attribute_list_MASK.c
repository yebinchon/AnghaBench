#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct super_block {unsigned long s_blocksize; unsigned char s_blocksize_bits; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int s64 ;
struct TYPE_7__ {int length; scalar_t__ vcn; } ;
typedef  TYPE_1__ runlist_element ;
struct TYPE_8__ {int /*<<< orphan*/  lock; TYPE_1__* rl; } ;
typedef  TYPE_2__ runlist ;
struct TYPE_9__ {unsigned char cluster_size_bits; struct super_block* sb; } ;
typedef  TYPE_3__ ntfs_volume ;
typedef  unsigned char LCN ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*) ; 
 unsigned char FUNC6 (TYPE_1__*,scalar_t__) ; 
 struct buffer_head* FUNC7 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(ntfs_volume *vol, runlist *runlist, u8 *al_start,
		const s64 size, const s64 initialized_size)
{
	LCN lcn;
	u8 *al = al_start;
	u8 *al_end = al + initialized_size;
	runlist_element *rl;
	struct buffer_head *bh;
	struct super_block *sb;
	unsigned long block_size;
	unsigned long block, max_block;
	int err = 0;
	unsigned char block_size_bits;

	FUNC4("Entering.");
	if (!vol || !runlist || !al || size <= 0 || initialized_size < 0 ||
			initialized_size > size)
		return -EINVAL;
	if (!initialized_size) {
		FUNC3(al, 0, size);
		return 0;
	}
	sb = vol->sb;
	block_size = sb->s_blocksize;
	block_size_bits = sb->s_blocksize_bits;
	FUNC1(&runlist->lock);
	rl = runlist->rl;
	if (!rl) {
		FUNC5(sb, "Cannot read attribute list since runlist is "
				"missing.");
		goto err_out;	
	}
	/* Read all clusters specified by the runlist one run at a time. */
	while (rl->length) {
		lcn = FUNC6(rl, rl->vcn);
		FUNC4("Reading vcn = 0x%llx, lcn = 0x%llx.",
				(unsigned long long)rl->vcn,
				(unsigned long long)lcn);
		/* The attribute list cannot be sparse. */
		if (lcn < 0) {
			FUNC5(sb, "ntfs_rl_vcn_to_lcn() failed.  Cannot "
					"read attribute list.");
			goto err_out;
		}
		block = lcn << vol->cluster_size_bits >> block_size_bits;
		/* Read the run from device in chunks of block_size bytes. */
		max_block = block + (rl->length << vol->cluster_size_bits >>
				block_size_bits);
		FUNC4("max_block = 0x%lx.", max_block);
		do {
			FUNC4("Reading block = 0x%lx.", block);
			bh = FUNC7(sb, block);
			if (!bh) {
				FUNC5(sb, "sb_bread() failed. Cannot "
						"read attribute list.");
				goto err_out;
			}
			if (al + block_size >= al_end)
				goto do_final;
			FUNC2(al, bh->b_data, block_size);
			FUNC0(bh);
			al += block_size;
		} while (++block < max_block);
		rl++;
	}
	if (initialized_size < size) {
initialize:
		FUNC3(al_start + initialized_size, 0, size - initialized_size);
	}
done:
	FUNC8(&runlist->lock);
	return err;
do_final:
	if (al < al_end) {
		/*
		 * Partial block.
		 *
		 * Note: The attribute list can be smaller than its allocation
		 * by multiple clusters.  This has been encountered by at least
		 * two people running Windows XP, thus we cannot do any
		 * truncation sanity checking here. (AIA)
		 */
		FUNC2(al, bh->b_data, al_end - al);
		FUNC0(bh);
		if (initialized_size < size)
			goto initialize;
		goto done;
	}
	FUNC0(bh);
	/* Real overflow! */
	FUNC5(sb, "Attribute list buffer overflow. Read attribute list "
			"is truncated.");
err_out:
	err = -EIO;
	goto done;
}