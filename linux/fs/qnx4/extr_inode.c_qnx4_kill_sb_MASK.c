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
struct super_block {int dummy; } ;
struct qnx4_sb_info {struct qnx4_sb_info* BitMap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qnx4_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 struct qnx4_sb_info* FUNC2 (struct super_block*) ; 

__attribute__((used)) static void FUNC3(struct super_block *sb)
{
	struct qnx4_sb_info *qs = FUNC2(sb);
	FUNC1(sb);
	if (qs) {
		FUNC0(qs->BitMap);
		FUNC0(qs);
	}
}