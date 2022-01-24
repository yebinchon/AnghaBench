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
struct super_block {struct squashfs_sb_info* s_fs_info; } ;
struct squashfs_super_block {int dummy; } ;
struct squashfs_sb_info {int dummy; } ;
typedef  void squashfs_page_actor ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC1 (unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct squashfs_sb_info*,void*,int) ; 
 void* FUNC5 (void**,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct super_block*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static void *FUNC7(struct super_block *sb, unsigned short flags)
{
	struct squashfs_sb_info *msblk = sb->s_fs_info;
	void *buffer = NULL, *comp_opts;
	struct squashfs_page_actor *actor = NULL;
	int length = 0;

	/*
	 * Read decompressor specific options from file system if present
	 */
	if (FUNC1(flags)) {
		buffer = FUNC3(PAGE_SIZE, GFP_KERNEL);
		if (buffer == NULL) {
			comp_opts = FUNC0(-ENOMEM);
			goto out;
		}

		actor = FUNC5(&buffer, 1, 0);
		if (actor == NULL) {
			comp_opts = FUNC0(-ENOMEM);
			goto out;
		}

		length = FUNC6(sb,
			sizeof(struct squashfs_super_block), 0, NULL, actor);

		if (length < 0) {
			comp_opts = FUNC0(length);
			goto out;
		}
	}

	comp_opts = FUNC4(msblk, buffer, length);

out:
	FUNC2(actor);
	FUNC2(buffer);
	return comp_opts;
}