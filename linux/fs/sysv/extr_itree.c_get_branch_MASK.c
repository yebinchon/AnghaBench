#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sysv_zone_t ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_9__ {int /*<<< orphan*/ * i_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 TYPE_7__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct buffer_head*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 struct buffer_head* FUNC5 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static Indirect *FUNC7(struct inode *inode,
			    int depth,
			    int offsets[],
			    Indirect chain[],
			    int *err)
{
	struct super_block *sb = inode->i_sb;
	Indirect *p = chain;
	struct buffer_head *bh;

	*err = 0;
	FUNC2(chain, NULL, FUNC0(inode)->i_data + *offsets);
	if (!p->key)
		goto no_block;
	while (--depth) {
		int block = FUNC3(FUNC1(sb), p->key);
		bh = FUNC5(sb, block);
		if (!bh)
			goto failure;
		if (!FUNC6(chain, p))
			goto changed;
		FUNC2(++p, bh, (sysv_zone_t*)bh->b_data + *++offsets);
		if (!p->key)
			goto no_block;
	}
	return NULL;

changed:
	FUNC4(bh);
	*err = -EAGAIN;
	goto no_block;
failure:
	*err = -EIO;
no_block:
	return p;
}