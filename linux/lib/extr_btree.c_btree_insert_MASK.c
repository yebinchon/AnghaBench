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
struct btree_head {int dummy; } ;
struct btree_geo {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct btree_head*,struct btree_geo*,unsigned long*,void*,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct btree_head *head, struct btree_geo *geo,
		unsigned long *key, void *val, gfp_t gfp)
{
	FUNC0(!val);
	return FUNC1(head, geo, key, val, 1, gfp);
}