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
struct nfs4_ff_layout_segment {int mirror_array_cnt; int /*<<< orphan*/ * mirror_array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct nfs4_ff_layout_segment *fls)
{
	int i;

	if (fls->mirror_array) {
		for (i = 0; i < fls->mirror_array_cnt; i++) {
			/* normally mirror_ds is freed in
			 * .free_deviceid_node but we still do it here
			 * for .alloc_lseg error path */
			FUNC0(fls->mirror_array[i]);
		}
		FUNC1(fls->mirror_array);
		fls->mirror_array = NULL;
	}
}