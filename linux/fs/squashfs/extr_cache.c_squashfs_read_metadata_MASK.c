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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {struct squashfs_sb_info* s_fs_info; } ;
struct squashfs_sb_info {int /*<<< orphan*/  block_cache; } ;
struct squashfs_cache_entry {int error; int length; int /*<<< orphan*/  next_index; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 struct squashfs_cache_entry* FUNC1 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct squashfs_cache_entry*) ; 
 int FUNC3 (void*,struct squashfs_cache_entry*,int,int) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct super_block *sb, void *buffer,
		u64 *block, int *offset, int length)
{
	struct squashfs_sb_info *msblk = sb->s_fs_info;
	int bytes, res = length;
	struct squashfs_cache_entry *entry;

	FUNC0("Entered squashfs_read_metadata [%llx:%x]\n", *block, *offset);

	if (FUNC4(length < 0))
		return -EIO;

	while (length) {
		entry = FUNC1(sb, msblk->block_cache, *block, 0);
		if (entry->error) {
			res = entry->error;
			goto error;
		} else if (*offset >= entry->length) {
			res = -EIO;
			goto error;
		}

		bytes = FUNC3(buffer, entry, *offset, length);
		if (buffer)
			buffer += bytes;
		length -= bytes;
		*offset += bytes;

		if (*offset == entry->length) {
			*block = entry->next_index;
			*offset = 0;
		}

		FUNC2(entry);
	}

	return res;

error:
	FUNC2(entry);
	return res;
}