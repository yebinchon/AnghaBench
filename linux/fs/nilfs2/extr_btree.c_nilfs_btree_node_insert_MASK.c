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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct nilfs_btree_node*) ; 
 int /*<<< orphan*/ * FUNC3 (struct nilfs_btree_node*,int) ; 
 int FUNC4 (struct nilfs_btree_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_btree_node*,int) ; 

__attribute__((used)) static void FUNC6(struct nilfs_btree_node *node, int index,
				    __u64 key, __u64 ptr, int ncmax)
{
	__le64 *dkeys;
	__le64 *dptrs;
	int nchildren;

	dkeys = FUNC2(node);
	dptrs = FUNC3(node, ncmax);
	nchildren = FUNC4(node);
	if (index < nchildren) {
		FUNC1(dkeys + index + 1, dkeys + index,
			(nchildren - index) * sizeof(*dkeys));
		FUNC1(dptrs + index + 1, dptrs + index,
			(nchildren - index) * sizeof(*dptrs));
	}
	dkeys[index] = FUNC0(key);
	dptrs[index] = FUNC0(ptr);
	nchildren++;
	FUNC5(node, nchildren);
}