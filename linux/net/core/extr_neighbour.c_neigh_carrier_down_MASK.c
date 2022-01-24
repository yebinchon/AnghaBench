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
struct neigh_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct neigh_table*,struct net_device*,int) ; 

int FUNC1(struct neigh_table *tbl, struct net_device *dev)
{
	FUNC0(tbl, dev, true);
	return 0;
}