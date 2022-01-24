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
struct ocfs2_dio_write_ctxt {int /*<<< orphan*/  dw_zero_list; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocfs2_dio_write_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct inode *inode,
				     struct ocfs2_dio_write_ctxt *dwc)
{
	FUNC1(inode, &dwc->dw_zero_list);
	FUNC0(dwc);
}