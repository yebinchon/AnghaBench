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
struct msdos_sb_info {int free_clusters; int free_clus_valid; int prev_free; int max_cluster; struct fatent_operations* fatent_ops; } ;
struct inode {struct super_block* i_sb; } ;
struct fatent_operations {scalar_t__ (* ent_get ) (struct fat_entry*) ;int /*<<< orphan*/  (* ent_put ) (struct fat_entry*,int) ;} ;
struct fat_entry {int entry; scalar_t__ nr_bhs; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int FAT_ENT_EOF ; 
 scalar_t__ FAT_ENT_FREE ; 
 void* FAT_START_ENT ; 
 int MAX_BUF_PER_PAGE ; 
 struct msdos_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head**,int*,struct fat_entry*) ; 
 scalar_t__ FUNC4 (struct msdos_sb_info*,struct fat_entry*) ; 
 int FUNC5 (struct super_block*,struct fat_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int) ; 
 int FUNC7 (struct super_block*,struct buffer_head**,int) ; 
 int FUNC8 (struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC9 (struct fat_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct fat_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct fat_entry*,int) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct msdos_sb_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*) ; 
 scalar_t__ FUNC15 (struct fat_entry*) ; 
 int /*<<< orphan*/  FUNC16 (struct fat_entry*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct fat_entry*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct msdos_sb_info*) ; 

int FUNC19(struct inode *inode, int *cluster, int nr_cluster)
{
	struct super_block *sb = inode->i_sb;
	struct msdos_sb_info *sbi = FUNC1(sb);
	const struct fatent_operations *ops = sbi->fatent_ops;
	struct fat_entry fatent, prev_ent;
	struct buffer_head *bhs[MAX_BUF_PER_PAGE];
	int i, count, err, nr_bhs, idx_clus;

	FUNC0(nr_cluster > (MAX_BUF_PER_PAGE / 2));	/* fixed limit */

	FUNC13(sbi);
	if (sbi->free_clusters != -1 && sbi->free_clus_valid &&
	    sbi->free_clusters < nr_cluster) {
		FUNC18(sbi);
		return -ENOSPC;
	}

	err = nr_bhs = idx_clus = 0;
	count = FAT_START_ENT;
	FUNC10(&prev_ent);
	FUNC10(&fatent);
	FUNC11(&fatent, sbi->prev_free + 1);
	while (count < sbi->max_cluster) {
		if (fatent.entry >= sbi->max_cluster)
			fatent.entry = FAT_START_ENT;
		FUNC11(&fatent, fatent.entry);
		err = FUNC5(sb, &fatent);
		if (err)
			goto out;

		/* Find the free entries in a block */
		do {
			if (ops->ent_get(&fatent) == FAT_ENT_FREE) {
				int entry = fatent.entry;

				/* make the cluster chain */
				ops->ent_put(&fatent, FAT_ENT_EOF);
				if (prev_ent.nr_bhs)
					ops->ent_put(&prev_ent, entry);

				FUNC3(bhs, &nr_bhs, &fatent);

				sbi->prev_free = entry;
				if (sbi->free_clusters != -1)
					sbi->free_clusters--;

				cluster[idx_clus] = entry;
				idx_clus++;
				if (idx_clus == nr_cluster)
					goto out;

				/*
				 * fat_collect_bhs() gets ref-count of bhs,
				 * so we can still use the prev_ent.
				 */
				prev_ent = fatent;
			}
			count++;
			if (count == sbi->max_cluster)
				break;
		} while (FUNC4(sbi, &fatent));
	}

	/* Couldn't allocate the free entries */
	sbi->free_clusters = 0;
	sbi->free_clus_valid = 1;
	err = -ENOSPC;

out:
	FUNC18(sbi);
	FUNC14(sb);
	FUNC9(&fatent);
	if (!err) {
		if (FUNC12(inode))
			err = FUNC8(bhs, nr_bhs);
		if (!err)
			err = FUNC7(sb, bhs, nr_bhs);
	}
	for (i = 0; i < nr_bhs; i++)
		FUNC2(bhs[i]);

	if (err && idx_clus)
		FUNC6(inode, cluster[0]);

	return err;
}