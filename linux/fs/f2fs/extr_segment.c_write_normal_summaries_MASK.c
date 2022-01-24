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
struct f2fs_sb_info {int dummy; } ;
typedef  scalar_t__ block_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int NR_CURSEG_DATA_TYPE ; 
 int NR_CURSEG_NODE_TYPE ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct f2fs_sb_info *sbi,
					block_t blkaddr, int type)
{
	int i, end;
	if (FUNC0(type))
		end = type + NR_CURSEG_DATA_TYPE;
	else
		end = type + NR_CURSEG_NODE_TYPE;

	for (i = type; i < end; i++)
		FUNC1(sbi, i, blkaddr + (i - type));
}