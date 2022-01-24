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
struct flow_indr_block_dev {int /*<<< orphan*/  ht_node; scalar_t__ refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  flow_indr_setup_block_ht_params ; 
 int /*<<< orphan*/  indr_setup_block_ht ; 
 int /*<<< orphan*/  FUNC0 (struct flow_indr_block_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct flow_indr_block_dev *indr_dev)
{
	if (--indr_dev->refcnt)
		return;

	FUNC1(&indr_setup_block_ht, &indr_dev->ht_node,
			       flow_indr_setup_block_ht_params);
	FUNC0(indr_dev);
}