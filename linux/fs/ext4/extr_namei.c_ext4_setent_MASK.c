#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ext4_renament {int /*<<< orphan*/ * bh; TYPE_2__* dir; int /*<<< orphan*/  inlined; TYPE_1__* de; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_7__ {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; } ;
struct TYPE_6__ {unsigned int file_type; int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(handle_t *handle, struct ext4_renament *ent,
		       unsigned ino, unsigned file_type)
{
	int retval;

	FUNC0(ent->bh, "get write access");
	retval = FUNC6(handle, ent->bh);
	if (retval)
		return retval;
	ent->de->inode = FUNC2(ino);
	if (FUNC5(ent->dir->i_sb))
		ent->de->file_type = file_type;
	FUNC9(ent->dir);
	ent->dir->i_ctime = ent->dir->i_mtime =
		FUNC3(ent->dir);
	FUNC7(handle, ent->dir);
	FUNC0(ent->bh, "call ext4_handle_dirty_metadata");
	if (!ent->inlined) {
		retval = FUNC4(handle, ent->dir, ent->bh);
		if (FUNC10(retval)) {
			FUNC8(ent->dir->i_sb, retval);
			return retval;
		}
	}
	FUNC1(ent->bh);
	ent->bh = NULL;

	return 0;
}