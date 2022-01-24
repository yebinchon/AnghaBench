#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int dummy; } ;
struct fs_context {TYPE_2__* root; } ;
struct TYPE_4__ {TYPE_1__* d_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_umount; } ;

/* Variables and functions */
 struct vfsmount* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vfsmount* FUNC2 (struct fs_context*) ; 
 int FUNC3 (struct fs_context*) ; 

struct vfsmount *FUNC4(struct fs_context *fc)
{
	int err = FUNC3(fc);
	if (!err) {
		FUNC1(&fc->root->d_sb->s_umount);
		return FUNC2(fc);
	}
	return FUNC0(err);
}