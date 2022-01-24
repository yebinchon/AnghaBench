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
struct dnode_of_data {int /*<<< orphan*/ * inode_page; int /*<<< orphan*/ * node_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC1(struct dnode_of_data *dn)
{
	if (dn->node_page)
		FUNC0(dn->node_page, 1);
	if (dn->inode_page && dn->node_page != dn->inode_page)
		FUNC0(dn->inode_page, 0);
	dn->node_page = NULL;
	dn->inode_page = NULL;
}