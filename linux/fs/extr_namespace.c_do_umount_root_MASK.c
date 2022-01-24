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
struct super_block {int /*<<< orphan*/  s_umount; int /*<<< orphan*/  s_root; } ;
struct fs_context {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fs_context*) ; 
 int FUNC1 (struct fs_context*) ; 
 int /*<<< orphan*/  SB_RDONLY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct fs_context* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct fs_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fs_context*) ; 
 int FUNC6 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct super_block *sb)
{
	int ret = 0;

	FUNC2(&sb->s_umount);
	if (!FUNC7(sb)) {
		struct fs_context *fc;

		fc = FUNC3(sb->s_root, SB_RDONLY,
						SB_RDONLY);
		if (FUNC0(fc)) {
			ret = FUNC1(fc);
		} else {
			ret = FUNC4(fc, NULL);
			if (!ret)
				ret = FUNC6(fc);
			FUNC5(fc);
		}
	}
	FUNC8(&sb->s_umount);
	return ret;
}