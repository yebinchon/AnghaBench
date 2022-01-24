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
struct dsa_switch_tree {scalar_t__ cpu_dp; struct dsa_switch** ds; } ;
struct dsa_switch {int num_ports; struct dsa_port* ports; } ;
struct dsa_port {scalar_t__ cpu_dp; } ;

/* Variables and functions */
 int DSA_MAX_SWITCHES ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dsa_port*) ; 
 scalar_t__ FUNC1 (struct dsa_port*) ; 
 scalar_t__ FUNC2 (struct dsa_switch_tree*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct dsa_switch_tree *dst)
{
	struct dsa_switch *ds;
	struct dsa_port *dp;
	int device, port;

	/* DSA currently only supports a single CPU port */
	dst->cpu_dp = FUNC2(dst);
	if (!dst->cpu_dp) {
		FUNC3("Tree has no master device\n");
		return -EINVAL;
	}

	/* Assign the default CPU port to all ports of the fabric */
	for (device = 0; device < DSA_MAX_SWITCHES; device++) {
		ds = dst->ds[device];
		if (!ds)
			continue;

		for (port = 0; port < ds->num_ports; port++) {
			dp = &ds->ports[port];

			if (FUNC1(dp) || FUNC0(dp))
				dp->cpu_dp = dst->cpu_dp;
		}
	}

	return 0;
}