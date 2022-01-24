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
struct super_block {struct selinux_fs_info* s_fs_info; } ;
struct selinux_fs_info {struct super_block* sb; int /*<<< orphan*/ * state; scalar_t__ last_ino; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SEL_INO_NEXT ; 
 struct selinux_fs_info* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  selinux_state ; 

__attribute__((used)) static int FUNC2(struct super_block *sb)
{
	struct selinux_fs_info *fsi;

	fsi = FUNC0(sizeof(*fsi), GFP_KERNEL);
	if (!fsi)
		return -ENOMEM;

	FUNC1(&fsi->mutex);
	fsi->last_ino = SEL_INO_NEXT - 1;
	fsi->state = &selinux_state;
	fsi->sb = sb;
	sb->s_fs_info = fsi;
	return 0;
}