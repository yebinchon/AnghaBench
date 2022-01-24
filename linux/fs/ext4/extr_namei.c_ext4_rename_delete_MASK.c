#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ext4_renament {TYPE_3__* dir; TYPE_2__* dentry; int /*<<< orphan*/  bh; TYPE_7__* de; TYPE_1__* inode; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_12__ {scalar_t__ name_len; int /*<<< orphan*/  name; int /*<<< orphan*/  inode; } ;
struct TYPE_11__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  i_nlink; } ;
struct TYPE_9__ {TYPE_5__ d_name; } ;
struct TYPE_8__ {scalar_t__ i_ino; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(handle_t *handle, struct ext4_renament *ent,
			       int force_reread)
{
	int retval;
	/*
	 * ent->de could have moved from under us during htree split, so make
	 * sure that we are deleting the right entry.  We might also be pointing
	 * to a stale entry in the unused part of ent->bh so just checking inum
	 * and the name isn't enough.
	 */
	if (FUNC3(ent->de->inode) != ent->inode->i_ino ||
	    ent->de->name_len != ent->dentry->d_name.len ||
	    FUNC4(ent->de->name, ent->dentry->d_name.name,
		    ent->de->name_len) ||
	    force_reread) {
		retval = FUNC1(handle, ent->dir,
						&ent->dentry->d_name);
	} else {
		retval = FUNC0(handle, ent->dir, ent->de, ent->bh);
		if (retval == -ENOENT) {
			retval = FUNC1(handle, ent->dir,
							&ent->dentry->d_name);
		}
	}

	if (retval) {
		FUNC2(ent->dir,
				   "Deleting old file: nlink %d, error=%d",
				   ent->dir->i_nlink, retval);
	}
}