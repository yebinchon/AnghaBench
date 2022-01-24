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
struct swap_info_struct {unsigned char* swap_map; int /*<<< orphan*/  cluster_info; } ;
struct swap_cluster_info {int dummy; } ;

/* Variables and functions */
 unsigned char SWAP_HAS_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct swap_info_struct*,int /*<<< orphan*/ ,unsigned long) ; 
 struct swap_cluster_info* FUNC2 (struct swap_info_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct swap_info_struct*,unsigned long,int) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct swap_cluster_info*) ; 

__attribute__((used)) static void FUNC7(struct swap_info_struct *p, swp_entry_t entry)
{
	struct swap_cluster_info *ci;
	unsigned long offset = FUNC5(entry);
	unsigned char count;

	ci = FUNC2(p, offset);
	count = p->swap_map[offset];
	FUNC0(count != SWAP_HAS_CACHE);
	p->swap_map[offset] = 0;
	FUNC1(p, p->cluster_info, offset);
	FUNC6(ci);

	FUNC3(entry, 1);
	FUNC4(p, offset, 1);
}