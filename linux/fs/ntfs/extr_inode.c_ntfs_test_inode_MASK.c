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
struct inode {scalar_t__ i_ino; } ;
typedef  int /*<<< orphan*/  ntfschar ;
struct TYPE_6__ {scalar_t__ type; int name_len; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ ntfs_inode ;
struct TYPE_7__ {scalar_t__ mft_no; scalar_t__ type; int name_len; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ ntfs_attr ;

/* Variables and functions */
 scalar_t__ AT_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct inode *vi, ntfs_attr *na)
{
	ntfs_inode *ni;

	if (vi->i_ino != na->mft_no)
		return 0;
	ni = FUNC1(vi);
	/* If !NInoAttr(ni), @vi is a normal file or directory inode. */
	if (FUNC2(!FUNC0(ni))) {
		/* If not looking for a normal inode this is a mismatch. */
		if (FUNC4(na->type != AT_UNUSED))
			return 0;
	} else {
		/* A fake inode describing an attribute. */
		if (ni->type != na->type)
			return 0;
		if (ni->name_len != na->name_len)
			return 0;
		if (na->name_len && FUNC3(ni->name, na->name,
				na->name_len * sizeof(ntfschar)))
			return 0;
	}
	/* Match! */
	return 1;
}