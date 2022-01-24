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
struct nilfs_btree_node {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC1 (struct nilfs_btree_node*) ; 
 int /*<<< orphan*/ * FUNC2 (struct nilfs_btree_node*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_btree_node*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_btree_node*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_btree_node*,int) ; 

__attribute__((used)) static void FUNC6(struct nilfs_btree_node *node, int flags,
				  int level, int nchildren, int ncmax,
				  const __u64 *keys, const __u64 *ptrs)
{
	__le64 *dkeys;
	__le64 *dptrs;
	int i;

	FUNC3(node, flags);
	FUNC4(node, level);
	FUNC5(node, nchildren);

	dkeys = FUNC1(node);
	dptrs = FUNC2(node, ncmax);
	for (i = 0; i < nchildren; i++) {
		dkeys[i] = FUNC0(keys[i]);
		dptrs[i] = FUNC0(ptrs[i]);
	}
}