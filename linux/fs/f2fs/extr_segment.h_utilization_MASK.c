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
typedef  int u64 ;
struct f2fs_sb_info {int /*<<< orphan*/  user_block_count; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*) ; 

__attribute__((used)) static inline int FUNC2(struct f2fs_sb_info *sbi)
{
	return FUNC0((u64)FUNC1(sbi) * 100,
					sbi->user_block_count);
}