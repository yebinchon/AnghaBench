#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct f2fs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_2__ {int /*<<< orphan*/  cp_pack_start_sum; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline block_t FUNC2(struct f2fs_sb_info *sbi)
{
	return FUNC1(FUNC0(sbi)->cp_pack_start_sum);
}