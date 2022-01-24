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
struct nilfs_shadow_map {int /*<<< orphan*/  frozen_btnodes; int /*<<< orphan*/  frozen_data; int /*<<< orphan*/  frozen_buffers; } ;
struct nilfs_mdt_info {struct nilfs_shadow_map* mi_shadow; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nilfs_mdt_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct inode*) ; 

int FUNC4(struct inode *inode,
			       struct nilfs_shadow_map *shadow)
{
	struct nilfs_mdt_info *mi = FUNC1(inode);

	FUNC0(&shadow->frozen_buffers);
	FUNC2(&shadow->frozen_data);
	FUNC3(&shadow->frozen_data, inode);
	FUNC2(&shadow->frozen_btnodes);
	FUNC3(&shadow->frozen_btnodes, inode);
	mi->mi_shadow = shadow;
	return 0;
}