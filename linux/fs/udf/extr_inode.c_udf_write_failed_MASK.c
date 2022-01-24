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
struct udf_inode_info {scalar_t__ i_alloc_type; int /*<<< orphan*/  i_data_sem; } ;
struct inode {scalar_t__ i_size; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct address_space *mapping, loff_t to)
{
	struct inode *inode = mapping->host;
	struct udf_inode_info *iinfo = FUNC0(inode);
	loff_t isize = inode->i_size;

	if (to > isize) {
		FUNC2(inode, isize);
		if (iinfo->i_alloc_type != ICBTAG_FLAG_AD_IN_ICB) {
			FUNC1(&iinfo->i_data_sem);
			FUNC3(inode);
			FUNC4(inode);
			FUNC5(&iinfo->i_data_sem);
		}
	}
}