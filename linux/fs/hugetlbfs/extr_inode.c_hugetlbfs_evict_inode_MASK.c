#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resv_map {int /*<<< orphan*/  refs; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;
struct inode {TYPE_1__ i_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  LLONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct inode *inode)
{
	struct resv_map *resv_map;

	FUNC1(inode, 0, LLONG_MAX);

	/*
	 * Get the resv_map from the address space embedded in the inode.
	 * This is the address space which points to any resv_map allocated
	 * at inode creation time.  If this is a device special inode,
	 * i_mapping may not point to the original address space.
	 */
	resv_map = (struct resv_map *)(&inode->i_data)->private_data;
	/* Only regular and link inodes have associated reserve maps */
	if (resv_map)
		FUNC2(&resv_map->refs);
	FUNC0(inode);
}