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
typedef  int /*<<< orphan*/  u16 ;
struct hfs_bnode {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfs_bnode*,int /*<<< orphan*/ *,int,int) ; 

u16 FUNC2(struct hfs_bnode *node, int off)
{
	__be16 data;
	/* TODO: optimize later... */
	FUNC1(node, &data, off, 2);
	return FUNC0(data);
}