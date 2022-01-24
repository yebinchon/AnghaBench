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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct inode*) ; 

void FUNC4(struct inode *s_inode,
				 struct buffer_head *s_bh,
				 struct inode *t_inode,
				 struct buffer_head *t_bh)
{
	FUNC1(s_inode, 1);
	FUNC2(s_inode, 1);
	FUNC0(s_bh);
	if (s_inode != t_inode) {
		FUNC1(t_inode, 1);
		FUNC2(t_inode, 1);
		FUNC0(t_bh);
	}
	FUNC3(s_inode, t_inode);
}