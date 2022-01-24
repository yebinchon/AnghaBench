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
struct inode {int i_nlink; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EXT4_LINK_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int) ; 

__attribute__((used)) static void FUNC3(handle_t *handle, struct inode *inode)
{
	FUNC0(inode);
	if (FUNC1(inode) &&
	    (inode->i_nlink > EXT4_LINK_MAX || inode->i_nlink == 2))
		FUNC2(inode, 1);
}