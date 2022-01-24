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
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  jinode; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct inode *inode,
					      loff_t new_size)
{
	FUNC3(inode, new_size);
	/*
	 * If jinode is zero, then we never opened the file for
	 * writing, so there's no need to call
	 * jbd2_journal_begin_ordered_truncate() since there's no
	 * outstanding writes we need to flush.
	 */
	if (!FUNC0(inode)->jinode)
		return 0;
	return FUNC2(FUNC1(inode),
						   FUNC0(inode)->jinode,
						   new_size);
}