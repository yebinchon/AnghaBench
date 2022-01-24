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
typedef  int /*<<< orphan*/  uint32_t ;
struct kernel_lb_addr {int dummy; } ;
struct kernel_long_ad {int /*<<< orphan*/  extLength; struct kernel_lb_addr extLocation; } ;
struct inode {int dummy; } ;
struct extent_position {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,struct extent_position) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct extent_position,struct kernel_lb_addr,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct inode *inode, struct kernel_long_ad *laarr,
			       int startnum, int endnum,
			       struct extent_position *epos)
{
	int start = 0, i;
	struct kernel_lb_addr tmploc;
	uint32_t tmplen;

	if (startnum > endnum) {
		for (i = 0; i < (startnum - endnum); i++)
			FUNC0(inode, *epos);
	} else if (startnum < endnum) {
		for (i = 0; i < (endnum - startnum); i++) {
			FUNC1(inode, *epos, laarr[i].extLocation,
					laarr[i].extLength);
			FUNC2(inode, epos, &laarr[i].extLocation,
				      &laarr[i].extLength, 1);
			start++;
		}
	}

	for (i = start; i < endnum; i++) {
		FUNC2(inode, epos, &tmploc, &tmplen, 0);
		FUNC3(inode, epos, &laarr[i].extLocation,
			       laarr[i].extLength, 1);
	}
}