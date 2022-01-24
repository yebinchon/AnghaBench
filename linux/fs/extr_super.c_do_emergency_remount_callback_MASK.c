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
struct super_block {int s_flags; int /*<<< orphan*/  s_umount; scalar_t__ s_root; scalar_t__ s_bdev; } ;
struct fs_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fs_context*) ; 
 int SB_BORN ; 
 int SB_FORCE ; 
 int SB_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fs_context* FUNC2 (scalar_t__,int,int) ; 
 scalar_t__ FUNC3 (struct fs_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct super_block *sb)
{
	FUNC1(&sb->s_umount);
	if (sb->s_root && sb->s_bdev && (sb->s_flags & SB_BORN) &&
	    !FUNC6(sb)) {
		struct fs_context *fc;

		fc = FUNC2(sb->s_root,
					SB_RDONLY | SB_FORCE, SB_RDONLY);
		if (!FUNC0(fc)) {
			if (FUNC3(fc, NULL) == 0)
				(void)FUNC5(fc);
			FUNC4(fc);
		}
	}
	FUNC7(&sb->s_umount);
}