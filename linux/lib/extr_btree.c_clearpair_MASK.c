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
struct btree_geo {int no_longs; int /*<<< orphan*/  keylen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btree_geo*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct btree_geo *geo, unsigned long *node, int n)
{
	FUNC1(FUNC0(geo, node, n), 0, geo->keylen);
	node[geo->no_longs + n] = 0;
}