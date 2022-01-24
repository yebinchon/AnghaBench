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
struct ext4_renament {TYPE_1__* dir; int /*<<< orphan*/  inode; int /*<<< orphan*/  dir_bh; int /*<<< orphan*/  dir_inlined; TYPE_2__* parent_de; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(handle_t *handle, struct ext4_renament *ent,
				  unsigned dir_ino)
{
	int retval;

	ent->parent_de->inode = FUNC1(dir_ino);
	FUNC0(ent->dir_bh, "call ext4_handle_dirty_metadata");
	if (!ent->dir_inlined) {
		if (FUNC6(ent->inode)) {
			retval = FUNC3(handle,
							   ent->inode,
							   ent->dir_bh);
		} else {
			retval = FUNC2(handle, ent->inode,
							    ent->dir_bh);
		}
	} else {
		retval = FUNC4(handle, ent->inode);
	}
	if (retval) {
		FUNC5(ent->dir->i_sb, retval);
		return retval;
	}
	return 0;
}