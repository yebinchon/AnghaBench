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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOREAD_NOLOCK ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct inode *inode)
{
	if (!FUNC3(inode->i_sb, DIOREAD_NOLOCK))
		return 0;
	if (!FUNC0(inode->i_mode))
		return 0;
	if (!(FUNC2(inode, EXT4_INODE_EXTENTS)))
		return 0;
	if (FUNC1(inode))
		return 0;
	return 1;
}