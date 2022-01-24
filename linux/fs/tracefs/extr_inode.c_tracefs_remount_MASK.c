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
struct tracefs_fs_info {int /*<<< orphan*/  mount_opts; } ;
struct super_block {struct tracefs_fs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb, int *flags, char *data)
{
	int err;
	struct tracefs_fs_info *fsi = sb->s_fs_info;

	FUNC0(sb);
	err = FUNC2(data, &fsi->mount_opts);
	if (err)
		goto fail;

	FUNC1(sb);

fail:
	return err;
}