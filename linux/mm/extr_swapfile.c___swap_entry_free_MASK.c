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
struct swap_info_struct {int dummy; } ;
struct swap_cluster_info {int dummy; } ;

/* Variables and functions */
 unsigned char FUNC0 (struct swap_info_struct*,unsigned long,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct swap_cluster_info* FUNC2 (struct swap_info_struct*,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct swap_info_struct*,struct swap_cluster_info*) ; 

__attribute__((used)) static unsigned char FUNC5(struct swap_info_struct *p,
				       swp_entry_t entry, unsigned char usage)
{
	struct swap_cluster_info *ci;
	unsigned long offset = FUNC3(entry);

	ci = FUNC2(p, offset);
	usage = FUNC0(p, offset, usage);
	FUNC4(p, ci);
	if (!usage)
		FUNC1(entry);

	return usage;
}