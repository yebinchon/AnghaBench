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
struct free_segmap_info {struct free_segmap_info* free_secmap; struct free_segmap_info* free_segmap; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {struct free_segmap_info* free_info; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct free_segmap_info*) ; 

__attribute__((used)) static void FUNC2(struct f2fs_sb_info *sbi)
{
	struct free_segmap_info *free_i = FUNC0(sbi)->free_info;
	if (!free_i)
		return;
	FUNC0(sbi)->free_info = NULL;
	FUNC1(free_i->free_segmap);
	FUNC1(free_i->free_secmap);
	FUNC1(free_i);
}