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

/* Variables and functions */
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline bool FUNC3(struct f2fs_sb_info *sbi)
{
	if (FUNC2(!FUNC1(sbi, SBI_CP_DISABLED)))
		return true;
	if (FUNC2(!FUNC0(sbi, 0, 0)))
		return true;
	return false;
}