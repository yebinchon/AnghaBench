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
struct TYPE_2__ {int /*<<< orphan*/  sort; int /*<<< orphan*/  cmp; int /*<<< orphan*/  sort_list; int /*<<< orphan*/  list; } ;
struct block_hist {int valid; TYPE_1__ block_fmt; int /*<<< orphan*/  block_list; int /*<<< orphan*/  block_hists; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  block_cmp ; 
 int /*<<< orphan*/  block_sort ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct block_hist *bh)
{
	FUNC1(&bh->block_hists, &bh->block_list);
	FUNC2(&bh->block_list);

	FUNC0(&bh->block_fmt.list);
	FUNC0(&bh->block_fmt.sort_list);
	bh->block_fmt.cmp = block_cmp;
	bh->block_fmt.sort = block_sort;
	FUNC3(&bh->block_list,
					   &bh->block_fmt);
	bh->valid = true;
}