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
struct inode {int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_mapping; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mmap_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct inode *inode)
{
	/*
	 * We don't need to call ext4_break_layouts() because the blocks we
	 * are truncating were never visible to userspace.
	 */
	FUNC1(&FUNC0(inode)->i_mmap_sem);
	FUNC3(inode->i_mapping, inode->i_size);
	FUNC2(inode);
	FUNC4(&FUNC0(inode)->i_mmap_sem);
}