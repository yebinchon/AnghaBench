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
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct nilfs_btree_node*) ; 
 int /*<<< orphan*/ * FUNC3 (struct nilfs_btree_node*,int) ; 
 int FUNC4 (struct nilfs_btree_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_btree_node*,int) ; 

__attribute__((used)) static void FUNC6(struct nilfs_btree_node *left,
				       struct nilfs_btree_node *right,
				       int n, int lncmax, int rncmax)
{
	__le64 *ldkeys, *rdkeys;
	__le64 *ldptrs, *rdptrs;
	int lnchildren, rnchildren;

	ldkeys = FUNC2(left);
	ldptrs = FUNC3(left, lncmax);
	lnchildren = FUNC4(left);

	rdkeys = FUNC2(right);
	rdptrs = FUNC3(right, rncmax);
	rnchildren = FUNC4(right);

	FUNC0(ldkeys + lnchildren, rdkeys, n * sizeof(*rdkeys));
	FUNC0(ldptrs + lnchildren, rdptrs, n * sizeof(*rdptrs));
	FUNC1(rdkeys, rdkeys + n, (rnchildren - n) * sizeof(*rdkeys));
	FUNC1(rdptrs, rdptrs + n, (rnchildren - n) * sizeof(*rdptrs));

	lnchildren += n;
	rnchildren -= n;
	FUNC5(left, lnchildren);
	FUNC5(right, rnchildren);
}