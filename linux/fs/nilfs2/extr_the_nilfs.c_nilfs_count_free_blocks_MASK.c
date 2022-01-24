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
struct the_nilfs {int ns_blocks_per_segment; int /*<<< orphan*/  ns_dat; int /*<<< orphan*/  ns_sufile; } ;
typedef  int sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct the_nilfs *nilfs, sector_t *nblocks)
{
	unsigned long ncleansegs;

	FUNC1(&FUNC0(nilfs->ns_dat)->mi_sem);
	ncleansegs = FUNC2(nilfs->ns_sufile);
	FUNC3(&FUNC0(nilfs->ns_dat)->mi_sem);
	*nblocks = (sector_t)ncleansegs * nilfs->ns_blocks_per_segment;
	return 0;
}