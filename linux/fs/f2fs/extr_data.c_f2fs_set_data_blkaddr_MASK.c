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
struct dnode_of_data {int node_changed; int /*<<< orphan*/  node_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  NODE ; 
 int /*<<< orphan*/  FUNC0 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct dnode_of_data *dn)
{
	FUNC1(dn->node_page, NODE, true, true);
	FUNC0(dn);
	if (FUNC2(dn->node_page))
		dn->node_changed = true;
}