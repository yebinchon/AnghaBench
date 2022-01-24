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
struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
struct anode {int /*<<< orphan*/  btree; } ;
typedef  int secno ;
typedef  int /*<<< orphan*/  anode_secno ;

/* Variables and functions */
 int FUNC0 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,struct buffer_head*) ; 
 struct anode* FUNC1 (struct super_block*,int /*<<< orphan*/ ,struct buffer_head**) ; 

__attribute__((used)) static secno FUNC2(struct super_block *s, anode_secno a, unsigned sec)
{
	struct anode *anode;
	struct buffer_head *bh;
	if (!(anode = FUNC1(s, a, &bh))) return -1;
	return FUNC0(s, NULL, &anode->btree, sec, bh);
}