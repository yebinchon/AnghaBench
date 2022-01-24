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
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,struct buffer_head*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 

int FUNC2(handle_t *handle,
			       struct inode *inode,
			       struct buffer_head *bh)
{
	FUNC0(inode, bh);
	return FUNC1(handle, inode, bh);
}