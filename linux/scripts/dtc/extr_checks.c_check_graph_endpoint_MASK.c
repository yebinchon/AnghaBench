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
struct node {int /*<<< orphan*/  fullpath; int /*<<< orphan*/  basenamelen; int /*<<< orphan*/  name; TYPE_1__* parent; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,struct node*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct check*,struct dt_info*,struct node*) ; 
 struct node* FUNC2 (struct check*,struct dt_info*,struct node*) ; 
 int /*<<< orphan*/  graph_port_bus ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct check *c, struct dt_info *dti,
				 struct node *node)
{
	struct node *remote_node;

	if (!node->parent || node->parent->bus != &graph_port_bus)
		return;

	if (!FUNC3(node->name, node->basenamelen, "endpoint"))
		FUNC0(c, dti, node, "graph endpoint node name should be 'endpoint'");

	FUNC1(c, dti, node);

	remote_node = FUNC2(c, dti, node);
	if (!remote_node)
		return;

	if (FUNC2(c, dti, remote_node) != node)
		FUNC0(c, dti, node, "graph connection to node '%s' is not bidirectional",
		     remote_node->fullpath);
}