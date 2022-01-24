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
struct TYPE_2__ {unsigned int* nr_dirty; } ;

/* Variables and functions */
 size_t DIRTY_COLD_DATA ; 
 size_t DIRTY_COLD_NODE ; 
 size_t DIRTY_HOT_DATA ; 
 size_t DIRTY_HOT_NODE ; 
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 size_t DIRTY_WARM_DATA ; 
 size_t DIRTY_WARM_NODE ; 

__attribute__((used)) static inline unsigned int FUNC1(struct f2fs_sb_info *sbi)
{
	return FUNC0(sbi)->nr_dirty[DIRTY_HOT_DATA] +
		FUNC0(sbi)->nr_dirty[DIRTY_WARM_DATA] +
		FUNC0(sbi)->nr_dirty[DIRTY_COLD_DATA] +
		FUNC0(sbi)->nr_dirty[DIRTY_HOT_NODE] +
		FUNC0(sbi)->nr_dirty[DIRTY_WARM_NODE] +
		FUNC0(sbi)->nr_dirty[DIRTY_COLD_NODE];
}