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
struct ocfs2_write_ctxt {int /*<<< orphan*/  w_di_bh; int /*<<< orphan*/  w_unwritten_list; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_write_ctxt*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_write_ctxt*) ; 

__attribute__((used)) static void FUNC4(struct inode *inode,
				  struct ocfs2_write_ctxt *wc)
{
	FUNC2(inode, &wc->w_unwritten_list);
	FUNC3(wc);
	FUNC0(wc->w_di_bh);
	FUNC1(wc);
}