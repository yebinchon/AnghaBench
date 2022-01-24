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
struct net_device {int dummy; } ;
struct dsa_switch_tree {struct dsa_port* cpu_dp; } ;
struct dsa_port {struct net_device* master; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct dsa_port*) ; 

__attribute__((used)) static int FUNC1(struct dsa_switch_tree *dst)
{
	struct dsa_port *cpu_dp = dst->cpu_dp;
	struct net_device *master = cpu_dp->master;

	/* DSA currently supports a single pair of CPU port and master device */
	return FUNC0(master, cpu_dp);
}