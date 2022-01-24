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
struct squashfs_sb_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 void* FUNC1 (struct super_block*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (struct squashfs_sb_info*,void*) ; 

void *FUNC4(struct super_block *sb, unsigned short flags)
{
	struct squashfs_sb_info *msblk = sb->s_fs_info;
	void *stream, *comp_opts = FUNC1(sb, flags);

	if (FUNC0(comp_opts))
		return comp_opts;

	stream = FUNC3(msblk, comp_opts);
	if (FUNC0(stream))
		FUNC2(comp_opts);

	return stream;
}