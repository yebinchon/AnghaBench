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
struct dnode_of_data {unsigned int ofs_in_node; } ;

/* Variables and functions */
 int FUNC0 (struct dnode_of_data*,int) ; 

int FUNC1(struct dnode_of_data *dn)
{
	unsigned int ofs_in_node = dn->ofs_in_node;
	int ret;

	ret = FUNC0(dn, 1);
	dn->ofs_in_node = ofs_in_node;
	return ret;
}