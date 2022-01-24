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
struct udf_inode_info {int /*<<< orphan*/  i_extent_cache_lock; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct inode *inode)
{
	struct udf_inode_info *iinfo = FUNC0(inode);

	FUNC2(&iinfo->i_extent_cache_lock);
	FUNC1(inode);
	FUNC3(&iinfo->i_extent_cache_lock);
}