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
struct dnode_of_data {scalar_t__ data_blkaddr; scalar_t__ inode_page; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_NODE ; 
 scalar_t__ NULL_ADDR ; 
 int FUNC0 (struct dnode_of_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dnode_of_data*) ; 
 int FUNC2 (struct dnode_of_data*) ; 

int FUNC3(struct dnode_of_data *dn, pgoff_t index)
{
	bool need_put = dn->inode_page ? false : true;
	int err;

	err = FUNC0(dn, index, ALLOC_NODE);
	if (err)
		return err;

	if (dn->data_blkaddr == NULL_ADDR)
		err = FUNC2(dn);
	if (err || need_put)
		FUNC1(dn);
	return err;
}