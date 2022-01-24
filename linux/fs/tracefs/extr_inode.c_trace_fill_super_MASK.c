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
struct tree_descr {char* member_0; } ;
struct tracefs_fs_info {int /*<<< orphan*/  mount_opts; } ;
struct super_block {struct tracefs_fs_info* s_fs_info; int /*<<< orphan*/ * s_op; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TRACEFS_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct tracefs_fs_info*) ; 
 struct tracefs_fs_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct super_block*,int /*<<< orphan*/ ,struct tree_descr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int FUNC4 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tracefs_super_operations ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, void *data, int silent)
{
	static const struct tree_descr trace_files[] = {{""}};
	struct tracefs_fs_info *fsi;
	int err;

	fsi = FUNC1(sizeof(struct tracefs_fs_info), GFP_KERNEL);
	sb->s_fs_info = fsi;
	if (!fsi) {
		err = -ENOMEM;
		goto fail;
	}

	err = FUNC4(data, &fsi->mount_opts);
	if (err)
		goto fail;

	err  =  FUNC2(sb, TRACEFS_MAGIC, trace_files);
	if (err)
		goto fail;

	sb->s_op = &tracefs_super_operations;

	FUNC3(sb);

	return 0;

fail:
	FUNC0(fsi);
	sb->s_fs_info = NULL;
	return err;
}