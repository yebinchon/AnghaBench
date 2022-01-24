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
struct ubifs_znode {int /*<<< orphan*/  child_cnt; } ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (struct ubifs_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ubifs_info *c, struct ubifs_znode *znode, void *priv)
{
	long long *idx_size = priv;
	int add;

	add = FUNC1(c, znode->child_cnt);
	add = FUNC0(add, 8);
	*idx_size += add;
	return 0;
}