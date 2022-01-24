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
struct TYPE_2__ {int /*<<< orphan*/  em_list; scalar_t__ em_num_items; } ;
struct ocfs2_inode_info {TYPE_1__ ip_extent_map; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ocfs2_inode_info* FUNC1 (struct inode*) ; 

void FUNC2(struct inode *inode)
{
	struct ocfs2_inode_info *oi = FUNC1(inode);

	oi->ip_extent_map.em_num_items = 0;
	FUNC0(&oi->ip_extent_map.em_list);
}