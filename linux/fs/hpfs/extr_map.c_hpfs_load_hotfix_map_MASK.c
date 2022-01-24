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
typedef  int u32 ;
struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
struct hpfs_spare_block {int /*<<< orphan*/  hotfix_map; int /*<<< orphan*/  n_spares_used; int /*<<< orphan*/  n_spares; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int n_hotfixes; void** hotfix_to; void** hotfix_from; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (struct super_block*,void*,struct quad_buffer_head*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct super_block*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct super_block *s, struct hpfs_spare_block *spareblock)
{
	struct quad_buffer_head qbh;
	__le32 *directory;
	u32 n_hotfixes, n_used_hotfixes;
	unsigned i;

	n_hotfixes = FUNC4(spareblock->n_spares);
	n_used_hotfixes = FUNC4(spareblock->n_spares_used);

	if (n_hotfixes > 256 || n_used_hotfixes > n_hotfixes) {
		FUNC1(s, "invalid number of hotfixes: %u, used: %u", n_hotfixes, n_used_hotfixes);
		return;
	}
	if (!(directory = FUNC2(s, FUNC4(spareblock->hotfix_map), &qbh, 0))) {
		FUNC1(s, "can't load hotfix map");
		return;
	}
	for (i = 0; i < n_used_hotfixes; i++) {
		FUNC3(s)->hotfix_from[i] = FUNC4(directory[i]);
		FUNC3(s)->hotfix_to[i] = FUNC4(directory[n_hotfixes + i]);
	}
	FUNC3(s)->n_hotfixes = n_used_hotfixes;
	FUNC0(&qbh);
}