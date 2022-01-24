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
typedef  int /*<<< orphan*/  u16 ;
struct hsr_port {size_t type; } ;
struct hsr_node {int /*<<< orphan*/ * seq_out; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct hsr_port *port, struct hsr_node *node,
			   u16 sequence_nr)
{
	if (FUNC0(sequence_nr, node->seq_out[port->type]))
		return 1;

	node->seq_out[port->type] = sequence_nr;
	return 0;
}