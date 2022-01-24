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
struct qrtr_node {unsigned int nid; } ;

/* Variables and functions */
 unsigned int QRTR_EP_NID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qrtr_node_lock ; 
 int /*<<< orphan*/  qrtr_nodes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,struct qrtr_node*) ; 

__attribute__((used)) static void FUNC3(struct qrtr_node *node, unsigned int nid)
{
	if (node->nid != QRTR_EP_NID_AUTO || nid == QRTR_EP_NID_AUTO)
		return;

	FUNC0(&qrtr_node_lock);
	FUNC2(&qrtr_nodes, nid, node);
	node->nid = nid;
	FUNC1(&qrtr_node_lock);
}