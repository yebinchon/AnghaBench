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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct swap_info_struct {unsigned char* swap_map; } ;
struct swap_cluster_info {int dummy; } ;

/* Variables and functions */
 int SWAPFILE_CLUSTER ; 
 int /*<<< orphan*/  FUNC0 (struct swap_cluster_info*) ; 
 struct swap_cluster_info* FUNC1 (struct swap_info_struct*,unsigned long) ; 
 unsigned long FUNC2 (unsigned long,int) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct swap_info_struct*,struct swap_cluster_info*) ; 

__attribute__((used)) static bool FUNC6(struct swap_info_struct *si,
					 swp_entry_t entry)
{
	struct swap_cluster_info *ci;
	unsigned char *map = si->swap_map;
	unsigned long roffset = FUNC4(entry);
	unsigned long offset = FUNC2(roffset, SWAPFILE_CLUSTER);
	int i;
	bool ret = false;

	ci = FUNC1(si, offset);
	if (!ci || !FUNC0(ci)) {
		if (FUNC3(map[roffset]))
			ret = true;
		goto unlock_out;
	}
	for (i = 0; i < SWAPFILE_CLUSTER; i++) {
		if (FUNC3(map[offset + i])) {
			ret = true;
			break;
		}
	}
unlock_out:
	FUNC5(si, ci);
	return ret;
}