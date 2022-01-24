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
struct hugepage_subpool {int dummy; } ;
struct hstate {int dummy; } ;

/* Variables and functions */
 struct hstate* FUNC0 (struct inode*) ; 
 long FUNC1 (struct hugepage_subpool*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hstate*,int) ; 
 struct hugepage_subpool* FUNC3 (struct inode*) ; 

void FUNC4(struct inode *inode)
{
	struct hugepage_subpool *spool = FUNC3(inode);
	long rsv_adjust;

	rsv_adjust = FUNC1(spool, 1);
	if (rsv_adjust) {
		struct hstate *h = FUNC0(inode);

		FUNC2(h, 1);
	}
}