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
struct page {int dummy; } ;

/* Variables and functions */
 int NIDS_PER_BLOCK ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (struct page*) ; 

__attribute__((used)) static inline bool FUNC2(struct page *node_page)
{
	unsigned int ofs = FUNC1(node_page);

	if (FUNC0(ofs))
		return true;

	if (ofs == 3 || ofs == 4 + NIDS_PER_BLOCK ||
			ofs == 5 + 2 * NIDS_PER_BLOCK)
		return false;
	if (ofs >= 6 + 2 * NIDS_PER_BLOCK) {
		ofs -= 6 + 2 * NIDS_PER_BLOCK;
		if (!((long int)ofs % (NIDS_PER_BLOCK + 1)))
			return false;
	}
	return true;
}