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
struct old_pmap_entry {scalar_t__ pdFSID; scalar_t__ pdSize; scalar_t__ pdStart; } ;
struct old_pmap {struct old_pmap_entry* pdEntry; } ;
struct hfsplus_sb_info {int part; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int ENOENT ; 
 struct hfsplus_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb, struct old_pmap *pm,
		sector_t *part_start, sector_t *part_size)
{
	struct hfsplus_sb_info *sbi = FUNC0(sb);
	int i;

	for (i = 0; i < 42; i++) {
		struct old_pmap_entry *p = &pm->pdEntry[i];

		if (p->pdStart && p->pdSize &&
		    p->pdFSID == FUNC2(0x54465331)/*"TFS1"*/ &&
		    (sbi->part < 0 || sbi->part == i)) {
			*part_start += FUNC1(p->pdStart);
			*part_size = FUNC1(p->pdSize);
			return 0;
		}
	}

	return -ENOENT;
}