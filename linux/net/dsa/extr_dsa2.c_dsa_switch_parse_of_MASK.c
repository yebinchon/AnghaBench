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
struct dsa_switch {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dsa_switch*,struct device_node*) ; 
 int FUNC1 (struct dsa_switch*,struct device_node*) ; 

__attribute__((used)) static int FUNC2(struct dsa_switch *ds, struct device_node *dn)
{
	int err;

	err = FUNC0(ds, dn);
	if (err)
		return err;

	return FUNC1(ds, dn);
}