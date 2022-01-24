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
 int /*<<< orphan*/  DAX ; 
 int /*<<< orphan*/  EXT4_INODE_ENCRYPT ; 
 int /*<<< orphan*/  EXT4_INODE_VERITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct inode *inode)
{
	if (!FUNC4(inode->i_sb, DAX))
		return false;
	if (!FUNC0(inode->i_mode))
		return false;
	if (FUNC2(inode))
		return false;
	if (FUNC1(inode))
		return false;
	if (FUNC3(inode, EXT4_INODE_ENCRYPT))
		return false;
	if (FUNC3(inode, EXT4_INODE_VERITY))
		return false;
	return true;
}