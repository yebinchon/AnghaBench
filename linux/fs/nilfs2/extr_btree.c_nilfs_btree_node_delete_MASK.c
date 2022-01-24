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
				    __u64 *keyp, __u64 *ptrp, int ncmax)
{
	__u64 key;
	__u64 ptr;
	__le64 *dkeys;
	__le64 *dptrs;
	int nchildren;

	dkeys = FUNC2(node);
	dptrs = FUNC3(node, ncmax);
	key = FUNC0(dkeys[index]);
	ptr = FUNC0(dptrs[index]);
	nchildren = FUNC4(node);
	if (keyp != NULL)
		*keyp = key;
	if (ptrp != NULL)
		*ptrp = ptr;

	if (index < nchildren - 1) {
		FUNC1(dkeys + index, dkeys + index + 1,
			(nchildren - index - 1) * sizeof(*dkeys));
		FUNC1(dptrs + index, dptrs + index + 1,
			(nchildren - index - 1) * sizeof(*dptrs));
	}
	nchildren--;
	FUNC5(node, nchildren);
}