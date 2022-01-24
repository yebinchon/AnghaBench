#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ctime; } ;
struct TYPE_6__ {scalar_t__ key; scalar_t__ bh; scalar_t__* p; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  pointers_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC10(struct inode *inode,
				Indirect chain[],
				Indirect *where,
				int num)
{
	int i;

	/* Verify that place we are splicing to is still there and vacant */
	FUNC8(&pointers_lock);
	if (!FUNC7(chain, where-1) || *where->p)
		goto changed;
	*where->p = where->key;
	FUNC9(&pointers_lock);

	inode->i_ctime = FUNC2(inode);

	/* had we spliced it onto indirect block? */
	if (where->bh)
		FUNC3(where->bh, inode);

	if (FUNC0(inode))
		FUNC6(inode);
	else
		FUNC4(inode);
	return 0;

changed:
	FUNC9(&pointers_lock);
	for (i = 1; i < num; i++)
		FUNC1(where[i].bh);
	for (i = 0; i < num; i++)
		FUNC5(inode->i_sb, where[i].key);
	return -EAGAIN;
}