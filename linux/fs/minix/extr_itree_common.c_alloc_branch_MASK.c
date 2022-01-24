#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; int /*<<< orphan*/  b_size; } ;
typedef  void* block_t ;
struct TYPE_3__ {void* key; struct buffer_head* bh; void** p; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*) ; 
 struct buffer_head* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC11(struct inode *inode,
			     int num,
			     int *offsets,
			     Indirect *branch)
{
	int n = 0;
	int i;
	int parent = FUNC7(inode);

	branch[0].key = FUNC2(parent);
	if (parent) for (n = 1; n < num; n++) {
		struct buffer_head *bh;
		/* Allocate the next block */
		int nr = FUNC7(inode);
		if (!nr)
			break;
		branch[n].key = FUNC2(nr);
		bh = FUNC8(inode->i_sb, parent);
		FUNC3(bh);
		FUNC5(bh->b_data, 0, bh->b_size);
		branch[n].bh = bh;
		branch[n].p = (block_t*) bh->b_data + offsets[n];
		*branch[n].p = branch[n].key;
		FUNC9(bh);
		FUNC10(bh);
		FUNC4(bh, inode);
		parent = nr;
	}
	if (n == num)
		return 0;

	/* Allocation failed, free what we already allocated */
	for (i = 1; i < n; i++)
		FUNC0(branch[i].bh);
	for (i = 0; i < n; i++)
		FUNC6(inode, FUNC1(branch[i].key));
	return -ENOSPC;
}