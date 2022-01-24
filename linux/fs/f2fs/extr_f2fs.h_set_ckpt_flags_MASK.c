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
struct f2fs_sb_info {int /*<<< orphan*/  cp_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(struct f2fs_sb_info *sbi, unsigned int f)
{
	unsigned long flags;

	FUNC2(&sbi->cp_lock, flags);
	FUNC1(FUNC0(sbi), f);
	FUNC3(&sbi->cp_lock, flags);
}