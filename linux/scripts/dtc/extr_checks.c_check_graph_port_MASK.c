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
struct node {int /*<<< orphan*/  basenamelen; int /*<<< orphan*/  name; int /*<<< orphan*/ * bus; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,struct node*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct check*,struct dt_info*,struct node*) ; 
 int /*<<< orphan*/  graph_port_bus ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct check *c, struct dt_info *dti,
			     struct node *node)
{
	if (node->bus != &graph_port_bus)
		return;

	if (!FUNC2(node->name, node->basenamelen, "port"))
		FUNC0(c, dti, node, "graph port node name should be 'port'");

	FUNC1(c, dti, node);
}