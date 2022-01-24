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
struct qrtr_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct qrtr_node* FUNC2 (struct qrtr_node*) ; 
 int /*<<< orphan*/  qrtr_node_lock ; 
 int /*<<< orphan*/  qrtr_nodes ; 
 struct qrtr_node* FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static struct qrtr_node *FUNC4(unsigned int nid)
{
	struct qrtr_node *node;

	FUNC0(&qrtr_node_lock);
	node = FUNC3(&qrtr_nodes, nid);
	node = FUNC2(node);
	FUNC1(&qrtr_node_lock);

	return node;
}