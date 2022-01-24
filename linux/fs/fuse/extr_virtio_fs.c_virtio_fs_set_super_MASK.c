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
struct super_block {int /*<<< orphan*/  s_dev; } ;
struct fs_context {int /*<<< orphan*/  s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct super_block *sb,
			       struct fs_context *fsc)
{
	int err;

	err = FUNC1(&sb->s_dev);
	if (!err)
		FUNC0(fsc->s_fs_info);

	return err;
}