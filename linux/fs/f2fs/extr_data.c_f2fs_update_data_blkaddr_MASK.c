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
struct dnode_of_data {int /*<<< orphan*/  data_blkaddr; } ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct dnode_of_data*) ; 

void FUNC2(struct dnode_of_data *dn, block_t blkaddr)
{
	dn->data_blkaddr = blkaddr;
	FUNC0(dn);
	FUNC1(dn);
}