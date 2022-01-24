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
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; struct file_lock_context* i_flctx; } ;
struct file_lock_context {int /*<<< orphan*/  flc_lease; int /*<<< orphan*/  flc_posix; int /*<<< orphan*/  flc_flock; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct inode *inode)
{
	struct file_lock_context *ctx = inode->i_flctx;

	if (FUNC5(!FUNC2(&ctx->flc_flock) ||
		     !FUNC2(&ctx->flc_posix) ||
		     !FUNC2(&ctx->flc_lease))) {
		FUNC4("Leaked locks on dev=0x%x:0x%x ino=0x%lx:\n",
			FUNC0(inode->i_sb->s_dev), FUNC1(inode->i_sb->s_dev),
			inode->i_ino);
		FUNC3(&ctx->flc_flock, "FLOCK");
		FUNC3(&ctx->flc_posix, "POSIX");
		FUNC3(&ctx->flc_lease, "LEASE");
	}
}