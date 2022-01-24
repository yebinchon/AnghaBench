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
struct squashfs_sb_info {size_t next_meta_index; int /*<<< orphan*/  meta_index_mutex; struct meta_index* meta_index; } ;
struct meta_index {int locked; int offset; int skip; scalar_t__ entries; scalar_t__ inode_number; } ;
struct inode {scalar_t__ i_ino; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct squashfs_sb_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SQUASHFS_META_SLOTS ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct meta_index* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct meta_index *FUNC5(struct inode *inode, int offset,
				int skip)
{
	struct squashfs_sb_info *msblk = inode->i_sb->s_fs_info;
	struct meta_index *meta = NULL;
	int i;

	FUNC3(&msblk->meta_index_mutex);

	FUNC1("empty_meta_index: offset %d, skip %d\n", offset, skip);

	if (msblk->meta_index == NULL) {
		/*
		 * First time cache index has been used, allocate and
		 * initialise.  The cache index could be allocated at
		 * mount time but doing it here means it is allocated only
		 * if a 'large' file is read.
		 */
		msblk->meta_index = FUNC2(SQUASHFS_META_SLOTS,
			sizeof(*(msblk->meta_index)), GFP_KERNEL);
		if (msblk->meta_index == NULL) {
			FUNC0("Failed to allocate meta_index\n");
			goto failed;
		}
		for (i = 0; i < SQUASHFS_META_SLOTS; i++) {
			msblk->meta_index[i].inode_number = 0;
			msblk->meta_index[i].locked = 0;
		}
		msblk->next_meta_index = 0;
	}

	for (i = SQUASHFS_META_SLOTS; i &&
			msblk->meta_index[msblk->next_meta_index].locked; i--)
		msblk->next_meta_index = (msblk->next_meta_index + 1) %
			SQUASHFS_META_SLOTS;

	if (i == 0) {
		FUNC1("empty_meta_index: failed!\n");
		goto failed;
	}

	FUNC1("empty_meta_index: returned meta entry %d, %p\n",
			msblk->next_meta_index,
			&msblk->meta_index[msblk->next_meta_index]);

	meta = &msblk->meta_index[msblk->next_meta_index];
	msblk->next_meta_index = (msblk->next_meta_index + 1) %
			SQUASHFS_META_SLOTS;

	meta->inode_number = inode->i_ino;
	meta->offset = offset;
	meta->skip = skip;
	meta->entries = 0;
	meta->locked = 1;

failed:
	FUNC4(&msblk->meta_index_mutex);
	return meta;
}